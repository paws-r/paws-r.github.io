<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_get_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Recommendation objects that contain recommendations for a profiling group for a given time period

### Description

Returns a list of
[`Recommendation`](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html)
objects that contain recommendations for a profiling group for a given
time period. A list of
[`Anomaly`](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html)
objects that contains details about anomalies detected in the profiling
group for the same time period is also returned.

### Usage

    codeguruprofiler_get_recommendations(endTime, locale,
      profilingGroupName, startTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_get_recommendations_:_endTime">endTime</code></td>
<td><p>[required] The start time of the profile to get analysis data
about. You must specify <code>startTime</code> and <code>endTime</code>.
This is specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_get_recommendations_:_locale">locale</code></td>
<td><p>The language used to provide analysis. Specify using a string
that is one of the following <code
style="white-space: pre;">⁠BCP 47⁠</code> language codes.</p>
<ul>
<li><p><code>de-DE</code> - German, Germany</p></li>
<li><p><code>en-GB</code> - English, United Kingdom</p></li>
<li><p><code>en-US</code> - English, United States</p></li>
<li><p><code>es-ES</code> - Spanish, Spain</p></li>
<li><p><code>fr-FR</code> - French, France</p></li>
<li><p><code>it-IT</code> - Italian, Italy</p></li>
<li><p><code>ja-JP</code> - Japanese, Japan</p></li>
<li><p><code>ko-KR</code> - Korean, Republic of Korea</p></li>
<li><p><code>pt-BR</code> - Portugese, Brazil</p></li>
<li><p><code>zh-CN</code> - Chinese, China</p></li>
<li><p><code>zh-TW</code> - Chinese, Taiwan</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_get_recommendations_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group to get analysis data
about.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_get_recommendations_:_startTime">startTime</code></td>
<td><p>[required] The end time of the profile to get analysis data
about. You must specify <code>startTime</code> and <code>endTime</code>.
This is specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      anomalies = list(
        list(
          instances = list(
            list(
              endTime = as.POSIXct(
                "2015-01-01"
              ),
              id = "string",
              startTime = as.POSIXct(
                "2015-01-01"
              ),
              userFeedback = list(
                type = "Positive"|"Negative"
              )
            )
          ),
          metric = list(
            frameName = "string",
            threadStates = list(
              "string"
            ),
            type = "AggregatedRelativeTotalTime"
          ),
          reason = "string"
        )
      ),
      profileEndTime = as.POSIXct(
        "2015-01-01"
      ),
      profileStartTime = as.POSIXct(
        "2015-01-01"
      ),
      profilingGroupName = "string",
      recommendations = list(
        list(
          allMatchesCount = 123,
          allMatchesSum = 123.0,
          endTime = as.POSIXct(
            "2015-01-01"
          ),
          pattern = list(
            countersToAggregate = list(
              "string"
            ),
            description = "string",
            id = "string",
            name = "string",
            resolutionSteps = "string",
            targetFrames = list(
              list(
                "string"
              )
            ),
            thresholdPercent = 123.0
          ),
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          topMatches = list(
            list(
              frameAddress = "string",
              targetFramesIndex = 123,
              thresholdBreachValue = 123.0
            )
          )
        )
      )
    )

### Request syntax

    svc$get_recommendations(
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      locale = "string",
      profilingGroupName = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      )
    )
