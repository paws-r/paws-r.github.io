<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_list_profiling_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of profiling groups

### Description

Returns a list of profiling groups. The profiling groups are returned as
[`ProfilingGroupDescription`](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
objects.

### Usage

    codeguruprofiler_list_profiling_groups(includeDescription, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_list_profiling_groups_:_includeDescription">includeDescription</code></td>
<td><p>A <code>Boolean</code> value indicating whether to include a
description. If <code>true</code>, then a list of <a
href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html"><code>ProfilingGroupDescription</code></a>
objects that contain detailed information about profiling groups is
returned. If <code>false</code>, then a list of profiling group names is
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_list_profiling_groups_:_maxResults">maxResults</code></td>
<td><p>The maximum number of profiling groups results returned by
<code>list_profiling_groups</code> in paginated output. When this
parameter is used, <code>list_profiling_groups</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_profiling_groups</code> request with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_list_profiling_groups_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_profiling_groups</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      profilingGroupNames = list(
        "string"
      ),
      profilingGroups = list(
        list(
          agentOrchestrationConfig = list(
            profilingEnabled = TRUE|FALSE
          ),
          arn = "string",
          computePlatform = "Default"|"AWSLambda",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          profilingStatus = list(
            latestAgentOrchestratedAt = as.POSIXct(
              "2015-01-01"
            ),
            latestAgentProfileReportedAt = as.POSIXct(
              "2015-01-01"
            ),
            latestAggregatedProfile = list(
              period = "PT5M"|"PT1H"|"P1D",
              start = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          tags = list(
            "string"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_profiling_groups(
      includeDescription = TRUE|FALSE,
      maxResults = 123,
      nextToken = "string"
    )
