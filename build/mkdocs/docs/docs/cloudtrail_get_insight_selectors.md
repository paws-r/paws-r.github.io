<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_get_insight_selectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the settings for the Insights event selectors that you configured for your trail

### Description

Describes the settings for the Insights event selectors that you
configured for your trail. `get_insight_selectors` shows if CloudTrail
Insights event logging is enabled on the trail, and if it is, which
insight types are enabled. If you run `get_insight_selectors` on a trail
that does not have Insights events enabled, the operation throws the
exception `InsightNotEnabledException`

For more information, see [Logging CloudTrail Insights Events for
Trails](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
in the *CloudTrail User Guide*.

### Usage

    cloudtrail_get_insight_selectors(TrailName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_get_insight_selectors_:_TrailName">TrailName</code></td>
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
      InsightSelectors = list(
        list(
          InsightType = "ApiCallRateInsight"|"ApiErrorRateInsight"
        )
      )
    )

### Request syntax

    svc$get_insight_selectors(
      TrailName = "string"
    )
