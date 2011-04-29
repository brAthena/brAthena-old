// Copyright (c) Equipe brAthena - licenciado por GNU GPL
// Para maiores informações ver o LICENSE na pasta root do emulador.

/// * Proxy - Cria uma lista de conexão com socket a outro computador ou porta.

#include <errno.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

#ifdef STRERROR
extern char *sys_errlist[];
extern int sys_nerr;
char *undef = "Erro indefinido.";

char *strerror(error)
int error;
{
	if (error > sys_nerr)
		return undef;
	return sys_errlist[error];
}
#endif

#define CIAO_PS "bfi_2"
main(argc, argv)
	int argc;
	char **argv;
{
	int lsock, csock, osock;
	FILE *cfile;
	char buf[4096];
	struct sockaddr_in laddr, caddr, oaddr;
	int caddrlen = sizeof(caddr);
	fd_set fdsr, fdse;
	struct hostent *h;
	struct servent *s;
	int nbyt;
	unsigned long a;
	unsigned short oport;
	int i, j, argvlen;
	char *bfiargv[argc+1];
	char *fintops = CIAO_PS ;

	if( argc < 4 )
	{
		fprintf(stderr,"Modo de uso: %s porta do host original, porta do host proxy, ip do host proxy\n",argv[0]);
		return 30;
	}

	for( i = 0; i < argc; i++ )
	{
		bfiargv[i] = malloc(strlen(argv[i]) + 1);
		strncpy(bfiargv[i], argv[i], strlen(argv[i]) + 1);
	}

	bfiargv[argc] = NULL;
	argvlen = strlen(argv[0]);

	if( argvlen < strlen(CIAO_PS) )
	{
		printf("Insuficiência de dados!\n") ;
		abort();
	}

	if(bfiargv[4]) fintops=bfiargv[4] ;
	strncpy(argv[0], fintops, strlen(fintops));

	for( i = strlen(fintops); i < argvlen; i++ )
		argv[0][i] = '\0';

	for( i = 1; i < argc; i++ )
	{
		argvlen = strlen(argv[i]);
		for(j=0; j <= argvlen; j++)
			argv[i][j] = '\0';
	}

	a = inet_addr(argv[3]);

	if( !(h = gethostbyname(bfiargv[3])) && !(h = gethostbyaddr(&a, 4, AF_INET)) )
	{
		perror(bfiargv[3]);
		return 25;
	}

	oport = atol(bfiargv[2]);
	laddr.sin_port = htons((unsigned short)(atol(bfiargv[1])));

	if( (lsock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1 )
	{
		perror("socket");
		return 20;
	}

	laddr.sin_family = htons(AF_INET);
	laddr.sin_addr.s_addr = inet_addr("Coloque o IP do servidor e compile.");

	if( bind(lsock, &laddr, sizeof(laddr)) )
	{
		perror("bind");
		return 20;
	}

	if( listen(lsock, 1) )
	{
		perror("pedido");
		return 20;
	}

	if( (nbyt = fork()) == -1 )
	{
		perror("bifurcação");
		return 20;
	}

	if (nbyt > 0)
		return 0;

	setsid();
	while( (csock = accept(lsock, &caddr, &caddrlen)) != -1 )
	{
		cfile = fdopen(csock,"r+");
		if( (nbyt = fork()) == -1 )
		{
			fprintf(cfile, "bifurcação: %s\n", strerror(errno));
			shutdown(csock,2);
			fclose(cfile);
			continue;
		}

		if (nbyt == 0)
			goto socket;

		fclose(cfile);
		while (waitpid(-1, NULL, WNOHANG) > 0);
	}

	return 20;

socket:
	if( (osock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1 )
	{
		fprintf(cfile, "socket: %s\n", strerror(errno));
		goto saida1;
	}

	oaddr.sin_family = h->h_addrtype;
	oaddr.sin_port = htons(oport);
	memcpy(&oaddr.sin_addr, h->h_addr, h->h_length);
	if( connect(osock, &oaddr, sizeof(oaddr)) )
	{
		fprintf(cfile, "conectar: %s\n", strerror(errno));
		goto saida1;
	}

	while( 1 )
	{
		FD_ZERO(&fdsr);
		FD_ZERO(&fdse);
		FD_SET(csock,&fdsr);
		FD_SET(csock,&fdse);
		FD_SET(osock,&fdsr);
		FD_SET(osock,&fdse);

		if( select(20, &fdsr, NULL, &fdse, NULL) == -1 )
		{
			fprintf(cfile, "seleção: %s\n", strerror(errno));
			goto saida2;
		}

		if( FD_ISSET(csock,&fdsr) || FD_ISSET(csock,&fdse) )
		{
			if ((nbyt = read(csock,buf,4096)) <= 0)
				goto saida2;
			if ((write(osock,buf,nbyt)) <= 0)
				goto saida2;
		}
		else if( FD_ISSET(osock,&fdsr) || FD_ISSET(osock,&fdse) )
		{
			if ((nbyt = read(osock,buf,4096)) <= 0)
				goto saida2;
			if ((write(csock,buf,nbyt)) <= 0)
				goto saida2;
		}
	}

saida2:
	shutdown(osock,2);
	close(osock);

saida1:
	fflush(cfile);
	shutdown(csock,2);

saida0:
	fclose(cfile);
	return 0;
}
