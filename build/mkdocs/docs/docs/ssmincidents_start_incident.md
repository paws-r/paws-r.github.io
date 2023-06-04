<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_start_incident</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to start an incident from CloudWatch alarms, EventBridge events, or manually

### Description

Used to start an incident from CloudWatch alarms, EventBridge events, or
manually.

### Usage

    ssmincidents_start_incident(clientToken, impact, relatedItems,
      responsePlanArn, title, triggerDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_start_incident_:_clientToken">clientToken</code></td>
<td><p>A token ensuring that the operation is called only once with the
specified details.</p></td>
</tr>
<tr class="even">
<td><code id="ssmincidents_start_incident_:_impact">impact</code></td>
<td><p>Defines the impact to the customers. Providing an impact
overwrites the impact provided by a response plan.</p>
<p><strong>Possible impacts:</strong></p>
<ul>
<li><p><code>1</code> - Critical impact, this typically relates to full
application failure that impacts many to all customers.</p></li>
<li><p><code>2</code> - High impact, partial application failure with
impact to many customers.</p></li>
<li><p><code>3</code> - Medium impact, the application is providing
reduced service to customers.</p></li>
<li><p><code>4</code> - Low impact, customer might aren't impacted by
the problem yet.</p></li>
<li><p><code>5</code> - No impact, customers aren't currently impacted
but urgent action is needed to avoid impact.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_start_incident_:_relatedItems">relatedItems</code></td>
<td><p>Add related items to the incident for other responders to use.
Related items are Amazon Web Services resources, external links, or
files uploaded to an Amazon S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_start_incident_:_responsePlanArn">responsePlanArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the response plan
that pre-defines summary, chat channels, Amazon SNS topics, runbooks,
title, and impact of the incident.</p></td>
</tr>
<tr class="odd">
<td><code id="ssmincidents_start_incident_:_title">title</code></td>
<td><p>Provide a title for the incident. Providing a title overwrites
the title provided by the response plan.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_start_incident_:_triggerDetails">triggerDetails</code></td>
<td><p>Details of what created the incident record in Incident
Manager.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      incidentRecordArn = "string"
    )

### Request syntax

    svc$start_incident(
      clientToken = "string",
      impact = 123,
      relatedItems = list(
        list(
          generatedId = "string",
          identifier = list(
            type = "ANALYSIS"|"INCIDENT"|"METRIC"|"PARENT"|"ATTACHMENT"|"OTHER"|"AUTOMATION"|"INVOLVED_RESOURCE"|"TASK",
            value = list(
              arn = "string",
              metricDefinition = "string",
              pagerDutyIncidentDetail = list(
                autoResolve = TRUE|FALSE,
                id = "string",
                secretId = "string"
              ),
              url = "string"
            )
          ),
          title = "string"
        )
      ),
      responsePlanArn = "string",
      title = "string",
      triggerDetails = list(
        rawData = "string",
        source = "string",
        timestamp = as.POSIXct(
          "2015-01-01"
        ),
        triggerArn = "string"
      )
    )
