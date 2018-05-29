public aspect HelloAspectJ2 {	
    // Define a Pointcut is
    // collection of JoinPoint call sayHello of class HelloAspectJDemo.
    //se agrego un nuevo pointcut para realizar la llamada al metodo grreting
    pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
    // se realizo el correspondiente advice para ejecutar la llamada luego 
    //que greeting() se ejecute en el programa principal
    after() : callGreeting() {
    	long startTime = System.currentTimeMillis();
    	// ... do something ...
    	long estimatedTime = System.currentTimeMillis() - startTime;
    	System.out.println("El tiempo estimado es: "+estimatedTime);
    }
    
}  