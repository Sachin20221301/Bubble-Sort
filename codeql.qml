// Online C compiler to run C program online
#include <stdio.h>
#include<stdlib.h>

int main() {
  struct node{
      int val;
      struct node*next;
  };
  struct node*head=NULL;
  void disp(struct node*head){
      while(head!=NULL){
          printf("%d->",head->val);
          head=head->next;
      }
      printf("NULL\n");
  
  }
  void push(struct node**head,int data){
      struct node*nn=(struct node*)malloc(sizeof(struct node));
      nn->val =data;
      nn->next=*head;
      *head=nn;
  }
  int arr[]={3,5,9,1,7,4,12};
  for(int i=0;i< (sizeof(arr)/sizeof(arr[0]));i++)
  {
      push(&head,arr[i]);
  }
  printf("Origina list\n");
  disp(head);
  struct node*current=head;
  struct node*loop=head;
  while (loop->next!=NULL){
  
  while (current->next!=NULL){
      if (current->val> current->next->val){
          int temp= current-> val;
          current->val=current->next->val;
          current->next->val=temp;
          
      }
      current=current->next;
  } 

 current =head;
  loop=loop->next;
  }
  
  printf("flipped list by Bubble sorting\n");
      disp(head);
    return 0;
}
