<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_describe_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specific campaign

### Description

Describes the specific campaign.

### Usage

    connectcampaignservice_describe_campaign(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_describe_campaign_:_id">id</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      campaign = list(
        arn = "string",
        connectInstanceId = "string",
        dialerConfig = list(
          predictiveDialerConfig = list(
            bandwidthAllocation = 123.0
          ),
          progressiveDialerConfig = list(
            bandwidthAllocation = 123.0
          )
        ),
        id = "string",
        name = "string",
        outboundCallConfig = list(
          answerMachineDetectionConfig = list(
            enableAnswerMachineDetection = TRUE|FALSE
          ),
          connectContactFlowId = "string",
          connectQueueId = "string",
          connectSourcePhoneNumber = "string"
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_campaign(
      id = "string"
    )
