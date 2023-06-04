<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_create_response_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a response plan that automates the initial response to incidents

### Description

Creates a response plan that automates the initial response to
incidents. A response plan engages contacts, starts chat channel
collaboration, and initiates runbooks at the beginning of an incident.

### Usage

    ssmincidents_create_response_plan(actions, chatChannel, clientToken,
      displayName, engagements, incidentTemplate, integrations, name, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_create_response_plan_:_actions">actions</code></td>
<td><p>The actions that the response plan starts at the beginning of an
incident.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_create_response_plan_:_chatChannel">chatChannel</code></td>
<td><p>The Chatbot chat channel used for collaboration during an
incident.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_create_response_plan_:_clientToken">clientToken</code></td>
<td><p>A token ensuring that the operation is called only once with the
specified details.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_create_response_plan_:_displayName">displayName</code></td>
<td><p>The long format of the response plan name. This field can contain
spaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_create_response_plan_:_engagements">engagements</code></td>
<td><p>The Amazon Resource Name (ARN) for the contacts and escalation
plans that the response plan engages during an incident.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_create_response_plan_:_incidentTemplate">incidentTemplate</code></td>
<td><p>[required] Details used to create an incident when using this
response plan.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_create_response_plan_:_integrations">integrations</code></td>
<td><p>Information about third-party services integrated into the
response plan.</p></td>
</tr>
<tr class="even">
<td><code id="ssmincidents_create_response_plan_:_name">name</code></td>
<td><p>[required] The short format name of the response plan. Can't
include spaces.</p></td>
</tr>
<tr class="odd">
<td><code id="ssmincidents_create_response_plan_:_tags">tags</code></td>
<td><p>A list of tags that you are adding to the response plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string"
    )

### Request syntax

    svc$create_response_plan(
      actions = list(
        list(
          ssmAutomation = list(
            documentName = "string",
            documentVersion = "string",
            dynamicParameters = list(
              list(
                variable = "INCIDENT_RECORD_ARN"|"INVOLVED_RESOURCES"
              )
            ),
            parameters = list(
              list(
                "string"
              )
            ),
            roleArn = "string",
            targetAccount = "RESPONSE_PLAN_OWNER_ACCOUNT"|"IMPACTED_ACCOUNT"
          )
        )
      ),
      chatChannel = list(
        chatbotSns = list(
          "string"
        ),
        empty = list()
      ),
      clientToken = "string",
      displayName = "string",
      engagements = list(
        "string"
      ),
      incidentTemplate = list(
        dedupeString = "string",
        impact = 123,
        incidentTags = list(
          "string"
        ),
        notificationTargets = list(
          list(
            snsTopicArn = "string"
          )
        ),
        summary = "string",
        title = "string"
      ),
      integrations = list(
        list(
          pagerDutyConfiguration = list(
            name = "string",
            pagerDutyIncidentConfiguration = list(
              serviceId = "string"
            ),
            secretId = "string"
          )
        )
      ),
      name = "string",
      tags = list(
        "string"
      )
    )
