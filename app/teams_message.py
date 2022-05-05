import json
import pymsteams


def lambda_handler(event, context):
    # Create a connectorcard object with the Microsoft Webhook URL


    # Add text to the message.
    myTeamsMessage.text("DockerAWS TEST: Happy day <at>[Data _Science](df585377.groups.absa.africa@za.teams.ms)</at>!")

    # send the message.
    return {'statusCode': 200,
            'body': json.dumps(myTeamsMessage.send())
            }