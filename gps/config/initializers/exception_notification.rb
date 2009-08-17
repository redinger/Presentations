ExceptionNotifier.exception_recipients = [APP_CONFIG["exception_email"]]
ExceptionNotifier.sender_address = %("Application Error" <#{APP_CONFIG['reply_email']}>)
ExceptionNotifier.email_prefix = "[GPS ERROR] "
