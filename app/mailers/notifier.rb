class Notifier < ActionMailer::Base
   def support_notification(sender)
    @sender = sender
    mail(:to => "administrator@yourdomain.com<script type="text/javascript">
/* <![CDATA[ */
(function(){try{var s,a,i,j,r,c,l=document.getElementById("__cf_email__");a=l.className;if(a){s='';r=parseInt(a.substr(0,2),16);for(j=2;a.length-j;j+=2){c=parseInt(a.substr(j,2),16)^r;s+=String.fromCharCode(c);}s=document.createTextNode(s);l.parentNode.replaceChild(s,l);}}catch(e){}})();
/* ]]> */
</script>",
         :from => sender.email,
         :subject => "New #{sender.support_type}")
   end

   def signup_notification(recipient)
     recipients recipient.email_address_with_name
     from       "system@example.com"
     subject    "New account information"
     body       "account" => recipient
   end

 end
