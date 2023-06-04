<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_anomalies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all of the cost anomalies detected on your account during the time period that's specified by the DateInterval object

### Description

Retrieves all of the cost anomalies detected on your account during the
time period that's specified by the `DateInterval` object. Anomalies are
available for up to 90 days.

### Usage

    costexplorer_get_anomalies(MonitorArn, DateInterval, Feedback,
      TotalImpact, NextPageToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_anomalies_:_MonitorArn">MonitorArn</code></td>
<td><p>Retrieves all of the cost anomalies detected for a specific cost
anomaly monitor Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_anomalies_:_DateInterval">DateInterval</code></td>
<td><p>[required] Assigns the start and end dates for retrieving cost
anomalies. The returned anomaly object will have an
<code>AnomalyEndDate</code> in the specified time range.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_anomalies_:_Feedback">Feedback</code></td>
<td><p>Filters anomaly results by the feedback field on the anomaly
object.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_anomalies_:_TotalImpact">TotalImpact</code></td>
<td><p>Filters anomaly results by the total impact field on the anomaly
object. For example, you can filter anomalies <code
style="white-space: pre;">⁠GREATER_THAN 200.00⁠</code> to retrieve
anomalies, with an estimated dollar impact greater than 200.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_anomalies_:_NextPageToken">NextPageToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_anomalies_:_MaxResults">MaxResults</code></td>
<td><p>The number of entries a paginated response contains.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Anomalies = list(
        list(
          AnomalyId = "string",
          AnomalyStartDate = "string",
          AnomalyEndDate = "string",
          DimensionValue = "string",
          RootCauses = list(
            list(
              Service = "string",
              Region = "string",
              LinkedAccount = "string",
              UsageType = "string",
              LinkedAccountName = "string"
            )
          ),
          AnomalyScore = list(
            MaxScore = 123.0,
            CurrentScore = 123.0
          ),
          Impact = list(
            MaxImpact = 123.0,
            TotalImpact = 123.0,
            TotalActualSpend = 123.0,
            TotalExpectedSpend = 123.0,
            TotalImpactPercentage = 123.0
          ),
          MonitorArn = "string",
          Feedback = "YES"|"NO"|"PLANNED_ACTIVITY"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$get_anomalies(
      MonitorArn = "string",
      DateInterval = list(
        StartDate = "string",
        EndDate = "string"
      ),
      Feedback = "YES"|"NO"|"PLANNED_ACTIVITY",
      TotalImpact = list(
        NumericOperator = "EQUAL"|"GREATER_THAN_OR_EQUAL"|"LESS_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN"|"BETWEEN",
        StartValue = 123.0,
        EndValue = 123.0
      ),
      NextPageToken = "string",
      MaxResults = 123
    )
