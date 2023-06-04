<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_get_response_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details of the specified response plan

### Description

Retrieves the details of the specified response plan.

### Usage

    ssmincidents_get_response_plan(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmincidents_get_response_plan_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the response
plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      arn = "string",
      chatChannel = list(
        chatbotSns = list(
          "string"
        ),
        empty = list()
      ),
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
      name = "string"
    )

### Request syntax

    svc$get_response_plan(
      arn = "string"
    )
