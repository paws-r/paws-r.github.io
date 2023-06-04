<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_entity_aggregates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the number of entities that are affected by each of the specified events

### Description

Returns the number of entities that are affected by each of the
specified events.

### Usage

    health_describe_entity_aggregates(eventArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="health_describe_entity_aggregates_:_eventArns">eventArns</code></td>
<td><p>A list of event ARNs (unique identifiers). For example: <code
style="white-space: pre;">⁠"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      entityAggregates = list(
        list(
          eventArn = "string",
          count = 123
        )
      )
    )

### Request syntax

    svc$describe_entity_aggregates(
      eventArns = list(
        "string"
      )
    )
