<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns list of event descriptions matching criteria up to the last 6 weeks

### Description

Returns list of event descriptions matching criteria up to the last 6
weeks.

This action returns the most recent 1,000 events from the specified
`NextToken`.

### Usage

    elasticbeanstalk_describe_events(ApplicationName, VersionLabel,
      TemplateName, EnvironmentId, EnvironmentName, PlatformArn, RequestId,
      Severity, StartTime, EndTime, MaxRecords, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_events_:_ApplicationName">ApplicationName</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to include only those associated with this
application.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_events_:_VersionLabel">VersionLabel</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to those associated with this application version.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_events_:_TemplateName">TemplateName</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to those that are associated with this environment
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_events_:_EnvironmentId">EnvironmentId</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to those associated with this environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_events_:_EnvironmentName">EnvironmentName</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to those associated with this environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_events_:_PlatformArn">PlatformArn</code></td>
<td><p>The ARN of a custom platform version. If specified, AWS Elastic
Beanstalk restricts the returned descriptions to those associated with
this custom platform version.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_events_:_RequestId">RequestId</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the described
events to include only those associated with this request ID.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_events_:_Severity">Severity</code></td>
<td><p>If specified, limits the events returned from this call to
include only those with the specified severity or higher.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_events_:_StartTime">StartTime</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to those that occur on or after this time.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_events_:_EndTime">EndTime</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to those that occur up to, but not including, the
<code>EndTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_events_:_MaxRecords">MaxRecords</code></td>
<td><p>Specifies the maximum number of events that can be returned,
beginning with the most recent event.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_events_:_NextToken">NextToken</code></td>
<td><p>Pagination token. If specified, the events return the next batch
of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Events = list(
        list(
          EventDate = as.POSIXct(
            "2015-01-01"
          ),
          Message = "string",
          ApplicationName = "string",
          VersionLabel = "string",
          TemplateName = "string",
          EnvironmentName = "string",
          PlatformArn = "string",
          RequestId = "string",
          Severity = "TRACE"|"DEBUG"|"INFO"|"WARN"|"ERROR"|"FATAL"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_events(
      ApplicationName = "string",
      VersionLabel = "string",
      TemplateName = "string",
      EnvironmentId = "string",
      EnvironmentName = "string",
      PlatformArn = "string",
      RequestId = "string",
      Severity = "TRACE"|"DEBUG"|"INFO"|"WARN"|"ERROR"|"FATAL",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      MaxRecords = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following operation retrieves events for an environment named
    # my-env:
    svc$describe_events(
      EnvironmentName = "my-env"
    )

    ## End(Not run)
