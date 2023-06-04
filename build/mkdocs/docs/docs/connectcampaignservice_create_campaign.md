<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_create_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a campaign for the specified Amazon Connect account

### Description

Creates a campaign for the specified Amazon Connect account. This API is
idempotent.

### Usage

    connectcampaignservice_create_campaign(connectInstanceId, dialerConfig,
      name, outboundCallConfig, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_create_campaign_:_connectInstanceId">connectInstanceId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_create_campaign_:_dialerConfig">dialerConfig</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="connectcampaignservice_create_campaign_:_name">name</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_create_campaign_:_outboundCallConfig">outboundCallConfig</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="connectcampaignservice_create_campaign_:_tags">tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      id = "string",
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$create_campaign(
      connectInstanceId = "string",
      dialerConfig = list(
        predictiveDialerConfig = list(
          bandwidthAllocation = 123.0
        ),
        progressiveDialerConfig = list(
          bandwidthAllocation = 123.0
        )
      ),
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
