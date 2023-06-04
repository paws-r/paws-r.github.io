<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_get_event_selectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the settings for the event selectors that you configured for your trail

### Description

Describes the settings for the event selectors that you configured for
your trail. The information returned for your event selectors includes
the following:

-   If your event selector includes read-only events, write-only events,
    or all events. This applies to both management events and data
    events.

-   If your event selector includes management events.

-   If your event selector includes data events, the resources on which
    you are logging data events.

For more information about logging management and data events, see the
following topics in the *CloudTrail User Guide*:

-   [Logging management
    events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html)

-   [Logging data
    events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html)

### Usage

    cloudtrail_get_event_selectors(TrailName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_get_event_selectors_:_TrailName">TrailName</code></td>
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
<p>If you specify a trail ARN, it must be in the format:</p>
<p><code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p></td>
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

    svc$get_event_selectors(
      TrailName = "string"
    )
