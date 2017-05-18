# java.lang.NoClassDefFoundError

Quando trovo l'errore

	Initialization of bean failed; nested exception is java.lang.NoClassDefFoundError: org.aspectj.util.PartialOrder$PartialComparable

è perché manca la dipendenza *aspectjweaver*

Nel `build.gradle` aggiungere:

	// https://mvnrepository.com/artifact/org.aspectj/aspectjweaver
	compile group: 'org.aspectj', name: 'aspectjweaver', version: '1.8.10'

Fonte: http://totalprogus.blogspot.it/2011/06/javalangclassnotfoundexception_27.html
