<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_put_event_selectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures an event selector or advanced event selectors for your trail

### Description

Configures an event selector or advanced event selectors for your trail.
Use event selectors or advanced event selectors to specify management
and data event settings for your trail. If you want your trail to log
Insights events, be sure the event selector enables logging of the
Insights event types you want configured for your trail. For more
information about logging Insights events, see [Logging Insights events
for
trails](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
in the *CloudTrail User Guide*. By default, trails created without
specific event selectors are configured to log all read and write
management events, and no data events.

When an event occurs in your account, CloudTrail evaluates the event
selectors or advanced event selectors in all trails. For each trail, if
the event matches any event selector, the trail processes and logs the
event. If the event doesn't match any event selector, the trail doesn't
log the event.

Example

1.  You create an event selector for a trail and specify that you want
    write-only events.

2.  The EC2 `GetConsoleOutput` and `RunInstances` API operations occur
    in your account.

3.  CloudTrail evaluates whether the events match your event selectors.

4.  The `RunInstances` is a write-only event and it matches your event
    selector. The trail logs the event.

5.  The `GetConsoleOutput` is a read-only event that doesn't match your
    event selector. The trail doesn't log the event.

The `put_event_selectors` operation must be called from the region in
which the trail was created; otherwise, an `InvalidHomeRegionException`
exception is thrown.

You can configure up to five event selectors for each trail. For more
information, see [Logging management
events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html),
[Logging data
events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html),
and [Quotas in
CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html)
in the *CloudTrail User Guide*.

You can add advanced event selectors, and conditions for your advanced
event selectors, up to a maximum of 500 values for all conditions and
selectors on a trail. You can use either `AdvancedEventSelectors` or
`EventSelectors`, but not both. If you apply `AdvancedEventSelectors` to
a trail, any existing `EventSelectors` are overwritten. For more
information about advanced event selectors, see [Logging data
events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html)
in the *CloudTrail User Guide*.

### Usage

    cloudtrail_put_event_selectors(TrailName, EventSelectors,
      AdvancedEventSelectors)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_put_event_selectors_:_TrailName">TrailName</code></td>
<td><p>[required] Specifies the name of the trail or trail ARN. If you
specify a trail name, the string must meet the following
requirements:</p>
<ul>
<li><p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods
(.), underscores (_), or dashes (-)</p></li>
<li><p>Start with a letter or number, and end with a letter or
number</p></li>
<li><p>Be between 3 and 128 characters</p></li>
<li><p>Have no adjacent periods, underscores or dashes. Names like <code
style="white-space: pre;">⁠my-_namespace⁠</code> and
<code>my--namespace</code> are not valid.</p></li>
<li><p>Not be in IP address format (for example, 192.168.5.4)</p></li>
</ul>
<p>If you specify a trail ARN, it must be in the following format.</p>
<p><code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_put_event_selectors_:_EventSelectors">EventSelectors</code></td>
<td><p>Specifies the settings for your event selectors. You can
configure up to five event selectors for a trail. You can use either
<code>EventSelectors</code> or <code>AdvancedEventSelectors</code> in a
<code>put_event_selectors</code> request, but not both. If you apply
<code>EventSelectors</code> to a trail, any existing
<code>AdvancedEventSelectors</code> are overwritten.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_put_event_selectors_:_AdvancedEventSelectors">AdvancedEventSelectors</code></td>
<td><p>Specifies the settings for advanced event selectors. You can add
advanced event selectors, and conditions for your advanced event
selectors, up to a maximum of 500 values for all conditions and
selectors on a trail. You can use either
<code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but
not both. If you apply <code>AdvancedEventSelectors</code> to a trail,
any existing <code>EventSelectors</code> are overwritten. For more
information about advanced event selectors, see <a
href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging
data events</a> in the <em>CloudTrail User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrailARN = "string",
      EventSelectors = list(
        list(
          ReadWriteType = "ReadOnly"|"WriteOnly"|"All",
          IncludeManagementEvents = TRUE|FALSE,
          DataResources = list(
            list(
              Type = "string",
              Values = list(
                "string"
              )
            )
          ),
          ExcludeManagementEventSources = list(
            "string"
          )
        )
      ),
      AdvancedEventSelectors = list(
        list(
          Name = "string",
          FieldSelectors = list(
            list(
              Field = "string",
              Equals = list(
                "string"
              ),
              StartsWith = list(
                "string"
              ),
              EndsWith = list(
                "string"
              ),
              NotEquals = list(
                "string"
              ),
              NotStartsWith = list(
                "string"
              ),
              NotEndsWith = list(
                "string"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$put_event_selectors(
      TrailName = "string",
      EventSelectors = list(
        list(
          ReadWriteType = "ReadOnly"|"WriteOnly"|"All",
          IncludeManagementEvents = TRUE|FALSE,
          DataResources = list(
            list(
              Type = "string",
              Values = list(
                "string"
              )
            )
          ),
          ExcludeManagementEventSources = list(
            "string"
          )
        )
      ),
      AdvancedEventSelectors = list(
        list(
          Name = "string",
          FieldSelectors = list(
            list(
              Field = "string",
              Equals = list(
                "string"
              ),
              StartsWith = list(
                "string"
              ),
              EndsWith = list(
                "string"
              ),
              NotEquals = list(
                "string"
              ),
              NotStartsWith = list(
                "string"
              ),
              NotEndsWith = list(
                "string"
              )
            )
          )
        )
      )
    )
