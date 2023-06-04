<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_put_insight_selectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail

### Description

Lets you enable Insights event logging by specifying the Insights
selectors that you want to enable on an existing trail. You also use
`put_insight_selectors` to turn off Insights event logging, by passing
an empty list of insight types. The valid Insights event types in this
release are `ApiErrorRateInsight` and `ApiCallRateInsight`.

To log CloudTrail Insights events on API call volume, the trail must log
`write` management events. To log CloudTrail Insights events on API
error rate, the trail must log `read` or `write` management events. You
can call `get_event_selectors` on a trail to check whether the trail
logs management events.

### Usage

    cloudtrail_put_insight_selectors(TrailName, InsightSelectors)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_put_insight_selectors_:_TrailName">TrailName</code></td>
<td><p>[required] The name of the CloudTrail trail for which you want to
change or add Insights selectors.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_put_insight_selectors_:_InsightSelectors">InsightSelectors</code></td>
<td><p>[required] A JSON string that contains the insight types you want
to log on a trail. <code>ApiCallRateInsight</code> and
<code>ApiErrorRateInsight</code> are valid Insight types.</p>
<p>The <code>ApiCallRateInsight</code> Insights type analyzes write-only
management API calls that are aggregated per minute against a baseline
API call volume.</p>
<p>The <code>ApiErrorRateInsight</code> Insights type analyzes
management API calls that result in error codes. The error is shown if
the API call is unsuccessful.</p></td>
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

    svc$put_insight_selectors(
      TrailName = "string",
      InsightSelectors = list(
        list(
          InsightType = "ApiCallRateInsight"|"ApiErrorRateInsight"
        )
      )
    )
