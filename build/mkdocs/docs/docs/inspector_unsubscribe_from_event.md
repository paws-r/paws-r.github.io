<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_unsubscribe_from_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic

### Description

Disables the process of sending Amazon Simple Notification Service (SNS)
notifications about a specified event to a specified SNS topic.

### Usage

    inspector_unsubscribe_from_event(resourceArn, event, topicArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_unsubscribe_from_event_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the assessment template that is used during
the event for which you want to stop receiving SNS
notifications.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_unsubscribe_from_event_:_event">event</code></td>
<td><p>[required] The event for which you want to stop receiving SNS
notifications.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_unsubscribe_from_event_:_topicArn">topicArn</code></td>
<td><p>[required] The ARN of the SNS topic to which SNS notifications
are sent.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unsubscribe_from_event(
      resourceArn = "string",
      event = "ASSESSMENT_RUN_STARTED"|"ASSESSMENT_RUN_COMPLETED"|"ASSESSMENT_RUN_STATE_CHANGED"|"FINDING_REPORTED"|"OTHER",
      topicArn = "string"
    )

### Examples

    ## Not run: 
    # Disables the process of sending Amazon Simple Notification Service (SNS)
    # notifications about a specified event to a specified SNS topic.
    svc$unsubscribe_from_event(
      event = "ASSESSMENT_RUN_COMPLETED",
      resourceArn = "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX...",
      topicArn = "arn:aws:sns:us-west-2:123456789012:exampletopic"
    )

    ## End(Not run)
