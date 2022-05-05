def lambda_handler():
    import pymsteams

    # Create a connectorcard object with the Microsoft Webhook URL
    myTeamsMessage = pymsteams.connectorcard("https://absacorp.webhook.office.com/webhookb2/7974aa8a-e896-4d75-9f49-c66c4b3c5956@5be1f46d-495f-465b-9507-996e8c8cdcb6/IncomingWebhook/146970d99ae0482b8b143520b17c6915/55e32570-061f-4aef-82c9-930277ce806c")

    # Add text to the message.
    myTeamsMessage.text("DockerAWS TEST: Happy day <at>[Data _Science](df585377.groups.absa.africa@za.teams.ms)</at>!")

    # send the message.
    return myTeamsMessage.send()