//here I have added keyword public with Human object under maincontract

pragma solidity ^0.6.0;
contract Human{
    
    int age;
    
    function setAge(int a) public {
        age=a;
    }
  function getAge() public view returns(int)
  {
      return age;
  }
  
}


contract MainCOntract//Now this will work as etherum virtual machine and will eploy on it directy instaad of EVM
{
//Human ojhuman;//for that we will create object
Human public ojhuman;//if we write public with it then we can also see it on that deployed EVM

function calling()public returns(int){
    
    ojhuman = new Human();//here we have instatiated that created object and Deployed
    ojhuman.setAge(23);//transaction  takes place
return  ojhuman.getAge();//result achieved
}

}