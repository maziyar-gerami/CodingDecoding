function [ cipher, plain ] = RSA( in )

p = input('\adade P ra entekhab konid: ');
q = input('\Adade Q ra entekhab konid: ');

disp('shoroo shod. montazer bemanid, momken ast zaman ziadi lazem dashte bashad...');
n=p*q;%Calculate value of n
tf=(p-1)*(q-1);%Calculate value of totien function

%Calculate the value of e
x=2;e=1;
while x > 1
    e=e+1;
    x=gcd(tf,e);%Search greatest common division
end

%Calculate the value of d
i=1;
d=0;
while i > 0
    d = d+1;
    x = e*d;
    x = mod(x,20);
    if x == 1
       i = 0; 
    end
end

%clc;
disp(['adade (p): ' num2str(p)]);
disp(['adade (q): ' num2str(q)]);
disp(['adade (N): ' num2str(n)]);
disp(['adade (tf): ' num2str(tf)]);
disp(['Public key (e): ' num2str(e)]);
disp(['Private key (d): ' num2str(d)]);

P = in;
c = double(P);
disp('pesan asli: ');
disp(P);

disp('ascii asli: ');
disp(c);

%Encrypt

cipher= power(c,e);
cipher= mod(cipher,n);

disp('cipher: ');
disp(cipher);

%Decrypt
plain= power(cipher,d);
plain= mod(plain,n)+33;

disp('decrypt: ');
disp(plain);

%disp('Pesan hasil decrypt: ');
%disp(char(plain));%Convert double to char

end

