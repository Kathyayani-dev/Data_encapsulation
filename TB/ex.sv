# code 1
...
module test;
  int qm1[$]={1,3,4,5,6};
  int qm2[$]={2,3};
  int k=2;

initial
   begin
     qm1.insert(1,k);
     qm1.delete(1);
     qm1.push_front(7);
     k=qm1.pop_back();
     qm2.push_back(4);
     k=qm2.pop_front();
     foreach(qm1[i])
       $display(qm1[i]);
     qm2.delete();
   end

endmodule
...


# code 2
...
module test;
int f[10]={1,2,3,4,5,6,7,8,9,10};
int i=5;

int result;
initial
   begin
     result=f.sum with (item%2==0);
      $display(f[i]);
   end
endmodule
...


# code 3
...
//pop front
module test();
  int k,q[$]='{1,2,3,4,5,6};

 initial
    begin
      foreach(q[i])
        begin
         k=q.pop_front();
         $display("%d",k);
        end
      $display("%p",q);
    end
endmodule
...


# code 4
...
// pop back
module test();
  int k,q[$]='{1,2,3,4,5,6};

 initial
    begin
      foreach(q[i])
        begin
         k=q.pop_back();
         $display("%d",k);
        end
      $display("%p",q);
    end
endmodule
...


# code 5
...
//queue...
module test();
int q[$]='{1,2,3,4,5,6};
int k=3;

 initial
   begin
     q.insert(2,k);
     q={q[0:1],k,q[2:$]};
     k=q.pop_back();
     q.push_back(6);
     k=q.pop_front();
     $display("q elements =%p",q);
   end
endmodule
...


# code 6
...
//copy,compare...
module test();
 bit[31:0] packet1[5],packet2[5];
 int i=1;
 int j=1;
   initial
    begin
      for(i=1;i<5;i++)
        packet1[i] = i;
        $display("packet1 [%0d] = %0d", i , packet1[1]);

      foreach(packet2[j])
        packet2[j]=j*2;
        $display("packet2 elements = %p",packet2);
   end
endmodule
...


# code 7
...
//even number printing...
module tst;
int f[20] ={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
int result;

        initial
                begin
                        result = f.sum with int '(item%2==0);
                end
endmodule
...


# code 8
...
class transaction;
  int data;
endclass:transaction

module test();
transaction t1_h,t2_h;
        initial
                begin
                        t1_h=new;
                        t1_h.data=10;
                        t2_h=new;
                        t2_h.data=1;
                        t2_h=t1_h;
                        $display("%p",t1_h);
                        $display("%p",t2_h);
                end
endmodule
...

