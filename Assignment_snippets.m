%We borrowed $1000 at a 10% annual interest rate.
% % If we did not make a payment for two years, 
% and assuming there is no penalty for non-payment,
% how much do we owe now? Assign the result to a variable called debt.
function debt= input(p,r,t)
p=1000
r=10/100
t=2
debt=p*(1+r)^t

%1. As of early 2018, Usain Bolt holds the world record in the men's
% 100-meter dash. It is 9.58 seconds. What was his average speed in km/h?
% Assign the result to a variable called hundred.2. Kenyan Eliud Kipchoge 
% set a new world record for men of 2:01:39 on September 16, 2018. 
% Assign his average speed in km/h to the variable marathon. 
% The marathon distance is 42.195 kilometers.
d=100/1000
t=9.58/(60*60)
hundred=d/t
D=42.195
T=2+(1/60)+(39/3600)
marathon=D/T

%1.Create a vector of all the odd positive integers smaller than 100 in 
%increasing orders and save it into variable odd 2.Create a vector of all 
% the even positive integers smaller than or equal to 100 in 
%decreasing orders and save it to variable even
odds=1:2:100
evens=100:-2:2

%Given matrix A,assign the second column of A to variable v.Afterwards
%change each element of the last row of A to 0
A = [1:5; 6:10; 11:15; 16:20];
v=A(1:4,2)
A(4,:)=0

%Given a Matrix A, Create a row vector of 1's that has same number
% of elements as A has rows. Create a column vector of 1's that has
% the same number of elements as A has columns. Using matrix multiplication
% , assign the product of the row vector, the matrix A, and the 
% column vector (in this order) to the variable result. 
A = [1:5; 6:10; 11:15; 16:20];
A
X=[1 1 1 1]
Y=[1;1;1;1;1]
result=X*A*Y

%Write a function called tri_area that returns the area of triangle with
%base and height as input arguments in the order b and h
function x = area_rect(b,h)
    x= b*h
  end

%Write a function called corners that takes a matrix as an input argument
% and returns four outputs: the elements at its four corners in this 
% order: top_left, top_right, bottom_left and bottom_right. 
% (Note that loops and if-statements are neither necessary or allowed
function [top_left,top_right,bottom_left,bottom_right]=corners(A)
    Acorners =A([1,end],[1,end])
    top_left=Acorners(1,1)
    top_right=Acorners(1,2)
    bottom_left=Acorners(2,1)
    bottom_right=Acorners(2,2)
end

%Write a function called taxi_fare that computes the fare of a taxi ride.
% It takes two inputs: the distance in kilometers (d) and the amount of 
% wait time in minutes (t). The fare is calculated like this: the first
% km is $5 every additional km is $2 and every minute of waiting is $0.25. 
function fare = taxi_fare(d,t)
    fare = 5+(ceil(d)-1)*2+(ceil(t)*0.25);   
end

%Write a function called minimax that takes M, a matrix input argument 
% and returns mmr, a row vector containing the absolute values of the 
% difference between the maximum and minimum valued elements in each row.
% As a second output argument called mmm, it provides the difference
% between the maximum and minimum element in the entire matrix
function [mmr,mmm]= minimax(M)
x = max(M,[],2)-min(M,[],2);
mmr=transpose(x);
mmm = max(M(:))-min(M(:));
end

%Write a function called trio that takes two positive integer inputs n 
% and m. The function returns a 3n-by-m matrix called T. The top third 
% of T (an n by m submatrix) is all 1s, the middle third is all 2-s 
% while the bottom third is all 3-s
function T=trio(n,m)
top_third=ones(n,m);
middle_third=2*top_third;
bottom_third=3*top_third;
T=[top_third;middle_third;bottom_third];
end

%Write a function called picker that takes three input arguments 
% called condition, in1 and in2 in this order. The argument condition
% is a logical. If it is true, the function assigns the value of in1 
% to the output argument out,  otherwise, it assigns the value of in2 
% to out.
function out=picker(condition,in1,in2)
if condition==true
    out=in1;
else
    out=in2;
    
end

%Write a function called eligible that helps the admission
% officer of the Graduate School decide whether the applicant is
% eligible for admission based on GRE scores. The function takes 
% two positive scalars called v and q as inputs and return the logical
% admit as the output
function admit= eligible(v,q)
avg= (v+q)*0.5;
if (avg>=92 && v >88 && q>88 )==1
    admit= true;
else 
    admit = false;
end

%The problem is as such: variable input function Function called should 
% take two arguments age and year,The function must return 
% true if age is less than the limit. If limit is not mentioned it 
% must have default as 21.Output argument name is too_young.
function too_young = under_age(age, limit)
if nargin < 2
    limit = 21;
end
if age < limit
        too_young=true;
else
        too_young=false;
return
end
end

%Write a function called valid_date that takes three positive integer 
% scalar inputs year, month, day. If these three represent a valid date, 
% return a logical true, otherwise false. The name of the output argument 
% is valid. If any of the inputs is not a positive integer scalar, return
% false as well. Note that every year that is exactly divisible by 4 is a 
% leap year, except for years that are exactly divisible by 100. However, 
% years that are exactly divisible by 400 are also leap years. For example,
% the year 1900 was not leap year, but the year 2000 was. Note that your 
% solution must not contain any of the date related built-in MATLAB
% functions.
function isvalid = valid_date(y, m, d)
   % Check if the inputs are valid 
   % Check that they are scalars
   if ~(isscalar(y) && isscalar(m) && isscalar(d))
       isvalid = false;
   % Check that inputs are positive
   elseif ~all([y, m, d] > 0)
       isvalid = false;
   % Check that inputs are integers (not the data type)    
   elseif any(rem([y, m, d], 1))
       isvalid = false;
   % Check that m and d are below the max possible
   elseif (m > 12) || (d > 31)
       isvalid = false;
   % The inputs could be a valid date, let's see if they actually are
   else
       % Vector of the number of days for each month
       daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
       % If leap year, change days in Feb
       if isequal(rem(y, 4), 0) && (~isequal(rem(y, 100), 0) || isequal(rem(y, 400), 0))
            daysInMonth(2) = 29;
       end
       maxDay = daysInMonth(m);
       if d > maxDay
           isvalid = false;
       else
           isvalid = true;
       end
       
   end
end

%Write a function called halfsum that takes as input an at most 
% two-dimensional matrix A and computes the sum of the elements of 
% A that are in the diagonal or are to the right of it. example, the 
% input is [1 2 3; 4 5 6; 7 8 9],the ans is 26
function summa=halfsum(M)
[row,col]=size(M);
summa=0;
for r=1:row
    for c=r:col
        summa=summa+M(r,c);
    end
end

%We have to write a function called next_prime that takes a scalar
% positive integer input n. Use a while-loop to find and return k, 
% the smallest prime number that is greater than n. we may use
% isprime function
function k=next_prime(n)
    if n<1
        error("Give a positive integer",n);
    else
        
       k=n+1;
        while ~isprime(k)
            k=k+1;
        end
        
    end

 %Write a function called freezing that takes a vector of numbers that 
 % correspond to daily low temperatures in Fahrenheit. Return numfreeze,
%  the number of days with sub freezing temperatures (that is, 
% lower than 32 F) without using loops.
function numfreeze=freezing(A)

n=A<32;
numfreeze=sum(n);
end

%Write a function called max_sum that takes v, a row vector of numbers, 
% and n, a positive integer as inputs. The function needs to find the n
% consecutive elements of v whose sum is the largest possible. In other 
% words, if v is [1 2 3 4 5 4 3 2 1] and n is 3, it will find 4 5 and 4 
% because their sum of 13 is the largest of any 3 consecutive elements of
% v. If multiple such sequences exist in v, max_sum returns the first one.
% The function returns summa, the sum as the first output argument and 
% index, the index of the first element of the n consecutive ones as the
% second output. If the input n is larger than the number of elements of
% v, the function returns 0 as the sum and -1 as the index.
function [s,i] = max_sum(v,n)
s = 0; i = 0;
len = length(v);
l = len-n+1;
if n>len
    s = 0;
    i = -1;
else
     for j=1:l
         if j==1
             s = sum(v(j:n));
             i=1;
         end
         if s<sum(v(j:n))
            s = sum(v(j:n));
            i = j;
        end
            if n<len
                n=n+1;
                
            end 
        
    end
end
end

%Caesar's cypher is the simplest encryption algorithm. It adds a fixed
% value to the ASCII (unicode) value of each character of a text. In other
% words, it shifts the characters. Decrypting a text is simply shifting it 
% back by the same amount, that is, it substract the same value from the 
% characters. Write a function called caesar that accepts two arguments: 
% the first is the character vector to be encrypted, while  the second is
% the shift amount. The function returns the output argument coded, the 
% encrypted text. The function needs to work with all the visible ASCII 
% characters from space to ~. The ASCII codes of these are 32 through 126
% . If the shifted code goes outside of this range, it should wrap around
% . For example, if we shift ~ by 1, the result should be space. 
% If we shift space by -1, the result should be ~. 
function coded= caesar(string,shift)
value=string+shift;
for i=1:length(value)
    while value(i)<32
        value(i)=value(i)+95;
    end
    while value(i)>126 
        value(i)=value(i)-95;
    end
end
coded=char(value);

%A sparse matrix is a large matrix with almost all elements of the same 
% value (typically zero). The normal representation of a sparse matrix 
% takes up lots of memory when the useful information can be captured with
% much less. A possible way to represent a sparse matrix is with a cell 
% vector whose first element is a 2-element vector representing the size 
% of the sparse matrix. The second element is a scalar specifying the
% default value of the sparse matrix. Each successive element of the 
% cell vector is a 3-element vector representing one element of the 
% sparse matrix that has a value other than the default. The three 
% elements are the row index, the column index and the actual value.
% Write a function called "sparse2matrix" that takes a single input of 
% a cell vector as defined above and returns the output argument called
% "matrix", the matrix in its traditional form.
function matrix= sparse2matrix(cellvec)
a= cellvec{1};
row=a(1);
column=a(2);
main_value= cellvec{2};
sparse_matrix= main_value * ones(row, column);
len= length(cellvec);
for i= 3:length(cellvec)
    change = cellvec{i};
    r=change(1);
    c=change(2);
    m=change(3);
    sparse_matrix(r,c)=m;
end
matrix=sparse_matrix;
end