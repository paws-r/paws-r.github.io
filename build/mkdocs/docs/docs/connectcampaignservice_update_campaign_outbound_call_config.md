<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_update_campaign_outbound_call_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the outbound call config of a campaign

### Description

Updates the outbound call config of a campaign. This API is idempotent.

### Usage

    connectcampaignservice_update_campaign_outbound_call_config(
      answerMachineDetectionConfig, connectContactFlowId,
      connectSourcePhoneNumber, id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_update_campaign_outbound_call_config_:_answerMachineDetectionConfig">answerMachineDetectionConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_update_campaign_outbound_call_config_:_connectContactFlowId">connectContactFlowId</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="connectcampaignservice_update_campaign_outbound_call_config_:_connectSourcePhoneNumber">connectSourcePhoneNumber</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_update_campaign_outbound_call_config_:_id">id</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_campaign_outbound_call_config(
      answerMachineDetectionConfig = list(
        enableAnswerMachineDetection = TRUE|FALSE
      ),
      connectContactFlowId = "string",
      connectSourcePhoneNumber = "string",
      id = "string"
    )
