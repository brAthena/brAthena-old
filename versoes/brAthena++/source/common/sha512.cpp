/*==================================================================================*
 *                    _           _   _   _                                         *
 *                   | |__  _ __ / \ | |_| |__   ___ _ __   __ _                    *
 *                   | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                   *
 *                   | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                   *
 *                   |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                   *
 *                                                                                  *
 *----------------------------------------------------------------------------------*
 * Copyright (c) 2012 brAthena Dev Team - <http://www.brathena.org/>                *
 * SHA512 Encryption - Initial structure created by Jagat Sastry.                   *
 *                                                                                  *
 *==================================================================================*/

#include<iostream>
#include<vector>
#include<fstream>
#include<string>
using namespace std;

typedef unsigned int uint;
typedef unsigned long long ullint;

string fromDecimal(ullint n, ullint b)
{
	string chars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	string result="";
	while(n>0)
	{
		result=chars.at(n%b)+result;
		n/=b;
	}

	return result;
}

ullint K[80] = {
	0x428a2f98d728ae22ULL, 0x7137449123ef65cdULL,
	0xb5c0fbcfec4d3b2fULL, 0xe9b5dba58189dbbcULL,
	0x3956c25bf348b538ULL, 0x59f111f1b605d019ULL,
	0x923f82a4af194f9bULL, 0xab1c5ed5da6d8118ULL,
	0xd807aa98a3030242ULL, 0x12835b0145706fbeULL,
	0x243185be4ee4b28cULL, 0x550c7dc3d5ffb4e2ULL,
	0x72be5d74f27b896fULL, 0x80deb1fe3b1696b1ULL,
	0x9bdc06a725c71235ULL, 0xc19bf174cf692694ULL,
	0xe49b69c19ef14ad2ULL, 0xefbe4786384f25e3ULL,
	0x0fc19dc68b8cd5b5ULL, 0x240ca1cc77ac9c65ULL,
	0x2de92c6f592b0275ULL, 0x4a7484aa6ea6e483ULL,
	0x5cb0a9dcbd41fbd4ULL, 0x76f988da831153b5ULL,
	0x983e5152ee66dfabULL, 0xa831c66d2db43210ULL,
	0xb00327c898fb213fULL, 0xbf597fc7beef0ee4ULL,
	0xc6e00bf33da88fc2ULL, 0xd5a79147930aa725ULL,
	0x06ca6351e003826fULL, 0x142929670a0e6e70ULL,
	0x27b70a8546d22ffcULL, 0x2e1b21385c26c926ULL,
	0x4d2c6dfc5ac42aedULL, 0x53380d139d95b3dfULL,
	0x650a73548baf63deULL, 0x766a0abb3c77b2a8ULL,
	0x81c2c92e47edaee6ULL, 0x92722c851482353bULL,
	0xa2bfe8a14cf10364ULL, 0xa81a664bbc423001ULL,
	0xc24b8b70d0f89791ULL, 0xc76c51a30654be30ULL,
	0xd192e819d6ef5218ULL, 0xd69906245565a910ULL,
	0xf40e35855771202aULL, 0x106aa07032bbd1b8ULL,
	0x19a4c116b8d2d0c8ULL, 0x1e376c085141ab53ULL,
	0x2748774cdf8eeb99ULL, 0x34b0bcb5e19b48a8ULL,
	0x391c0cb3c5c95a63ULL, 0x4ed8aa4ae3418acbULL,
	0x5b9cca4f7763e373ULL, 0x682e6ff3d6b2b8a3ULL,
	0x748f82ee5defb2fcULL, 0x78a5636f43172f60ULL,
	0x84c87814a1f0ab72ULL, 0x8cc702081a6439ecULL,
	0x90befffa23631e28ULL, 0xa4506cebde82bde9ULL,
	0xbef9a3f7b2c67915ULL, 0xc67178f2e372532bULL,
	0xca273eceea26619cULL, 0xd186b8c721c0c207ULL,
	0xeada7dd6cde0eb1eULL, 0xf57d4f7fee6ed178ULL,
	0x06f067aa72176fbaULL, 0x0a637dc5a2c898a6ULL,
	0x113f9804bef90daeULL, 0x1b710b35131c471bULL,
	0x28db77f523047d84ULL, 0x32caab7b40c72493ULL,
	0x3c9ebe0a15c9bebcULL, 0x431d67c49c100d4cULL,
	0x4cc5d4becb3e42b6ULL, 0x597f299cfc657e2aULL,
	0x5fcb6fab3ad6faecULL, 0x6c44198c4a475817ULL
};
   
    void makeblock(vector<ullint>& ret, string p_msg)
	{
		ullint cur=0;
		int ind=0;		 
		for(uint i=0; i<p_msg.size(); i++)
		{
			cur = (cur<<8) | (unsigned char)p_msg[i];
 			if(i%8==7)
			{
                
				ret.at(ind++)=cur;
				cur=0;
			}
		}
	}
   
class Block
{
	public:
	vector<ullint> msg;
	
	Block():msg(16, 0) { }
			
	Block(string p_msg):msg(16, 0)
	{ 
		makeblock(msg, p_msg);
	}
	
};
	

void split(vector<Block>& blks, string& msg)
{
     cout<<endl<<msg.size()<<endl;;
     cout<<blks.size()<<endl;
     cout<<"Splitting into blocks: "<<endl;
    cout<<endl<<"msgsize: "<<msg.size()*8<<endl;
	for(uint i=0; i<msg.size(); i+=128)
	{
             
		 makeblock(blks[i/128].msg, msg.substr(i, 128));
	}
}
	

string mynum(ullint x)
{
 string ret;
  for(uint i=0; i<8; i++)
  ret+=char(0);
  
  for(uint i=8; i>=1; i--)	//big endian machine assumed
  {
          ret += ((char*)(&x))[i-1];
  }
  
  return ret;
}
  

#define shr(x,n) ((x & 0xFFFFFFFFFFFFFFFFULL) >> n)
#define rotr(x,n) (shr(x,n) | (x << (64 - n)))

ullint ch(ullint x, ullint y, ullint z)
{
 return (x&y) ^ (~x&z);
}

ullint maj(ullint x, ullint y, ullint z)
{
 return (x&y) ^ (y&z) ^ (z&x);
}

ullint fn0(ullint x)
{
 return rotr(x, 28) ^ rotr(x, 34) ^ rotr(x, 39);
}

ullint fn1(ullint x)
{
 return rotr(x, 14) ^ rotr(x, 18) ^ rotr(x, 41);
}

ullint sigma0(ullint x)
{
	return rotr(x, 1) ^ rotr(x, 8) ^ shr(x, 7);
}

ullint sigma1(ullint x)
{
	return rotr(x, 19) ^ rotr(x, 61) ^ shr(x, 6);
}




 

int main()
{
    cout<<char(1<<7)<<endl;
    
	string msg_arr, msg;
	cout<<"Enter message"<<endl;
//	ifstream fin("input.txt");
//	fin>>msg_arr;
	cin>>msg_arr;
	msg=msg_arr;
	msg_arr += (char)(1<<7);
	uint cur_len = msg.size()*8 + 8;
	uint reqd_len = ((msg.size()*8)/1024+1) *1024;
	uint pad_len = reqd_len - cur_len - 128;
	
	string pad(pad_len/8, char(0));
	msg_arr += pad;
	
	string len_str(mynum(msg.size()*8));
	cout<<"mynum: "<<mynum(msg.size()*8)<<endl;
	msg_arr = msg_arr + len_str;
	
	uint num_blk = msg_arr.size()*8/1024;
	vector<Block> M(num_blk, Block());
	split(M, msg_arr);
	
		ullint H[]={
	0x6a09e667f3bcc908ULL,
	0xbb67ae8584caa73bULL,
	0x3c6ef372fe94f82bULL,
	0xa54ff53a5f1d36f1ULL,
	0x510e527fade682d1ULL,
	0x9b05688c2b3e6c1fULL,
	0x1f83d9abfb41bd6bULL,
	0x5be0cd19137e2179ULL
};
		
		for(uint i=0; i<num_blk; i++)
		{
             cout<<"Blk no: "<<i<<endl;
			vector<ullint> W(80, 0);
			for(uint t=0; t<16; t++)
			{
				W[t] = M[i].msg[t];
			}
			
			
			for(uint t=16; t<80; t++)
			{
				W[t] = sigma1(W[t-2]) + W[t-7] + sigma0(W[t-15]) + W[t-16];
			}
			
			ullint work[8];
			for(uint i=0; i<8; i++)
			work[i] = H[i];
			
			for(uint t=0; t<80; t++)
			{

				ullint t1, t2;
				t1 = work[7] + fn1(work[4]) + ch(work[4], work[5], work[6]) + K[t] + W[t];
				t2 = fn0(work[0]) + maj(work[0], work[1], work[2]);
				work[7] = work[6];
				work[6] = work[5];
				work[5] = work[4];
				work[4] = work[3] + t1; 
				work[3] = work[2]; 
				work[2] = work[1];
				work[1] = work[0];
				work[0] = t1 + t2;
				
			}
			
			for(uint i=0; i<8; i++)
			{
			H[i] = work[i] + H[i];
            }
			
		}
		
		cout<<"Output: "<<endl;
		 cout<<"SHA 512 HASH"<<endl;
		 for(uint i=0; i<8; i++)
		  cout<<H[i]<<" ";
		 cout<<endl;
		 
		 cout<<endl<<endl<<endl<<"****************SHA 512 MESSAGE DIGEST IN HEX****************"<<endl<<endl;
		 for(uint i=0; i<8; i++)
		 cout<<fromDecimal(H[i], 16)<<" ";
		 cout<<endl;
		 
		 system("pause");
		 return 0;
}