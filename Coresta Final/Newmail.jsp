<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*,java.net.*,javax.mail.*,java.io.*,java.util.*,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage"
	errorPage=""%>

<%
	String host = "smtp.gmail.com", user = "enter your emailid", pass = "enter your password";

	String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	//String email = (session.getAttribute("email")).toString();
	String to = (session.getAttribute("email")).toString(); // out going email id
	String from = user; //Email id of the recipient
	String subject = "Do NOT Share Your Password";
	String messageText = "Your password is -> " + (session.getAttribute("password")).toString();
	out.print("<script>alert('Your password has been emailed to your registered email id'); location='admin_panel.jsp';</script>");
	boolean sessionDebug = true;
	Properties props = System.getProperties();
	props.put("mail.host", host);
	props.put("mail.transport.protocol.", "smtp");
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.", "true");
	props.put("mail.smtp.port", "465");
	props.put("mail.smtp.socketFactory.fallback", "false");
	props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
	Session mailSession = Session.getDefaultInstance(props, null);
	mailSession.setDebug(sessionDebug);
	try {

		Message msg = new MimeMessage(mailSession);
		msg.setFrom(new InternetAddress(from));
		InternetAddress[] address = { new InternetAddress(to) };
		msg.setRecipients(Message.RecipientType.TO, address);
		msg.setSubject(subject);
		msg.setContent(messageText, "text/html"); // use setText if you want to send text

		Transport transport;
		transport = mailSession.getTransport("smtp");
		transport.connect(host, user, pass);

		transport.sendMessage(msg, msg.getAllRecipients());
		//WasEmailSent = true; // assume it was sent
		transport.close();
		response.sendRedirect("home_page.jsp");
	} catch (Exception err) {
		out.print(err);
	}
%>