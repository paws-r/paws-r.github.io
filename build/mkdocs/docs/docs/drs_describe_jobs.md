<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_describe_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Jobs

### Description

Returns a list of Jobs. Use the JobsID and fromDate and toDate filters
to limit which jobs are returned. The response is sorted by
creationDataTime - latest date first. Jobs are created by the
StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs.
Jobs are also created by DiagnosticLaunch and
TerminateDiagnosticInstances, which are APIs available only to *Support*
and only used in response to relevant support tickets.

### Usage

    drs_describe_jobs(filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="drs_describe_jobs_:_filters">filters</code></td>
<td><p>A set of filters by which to return Jobs.</p></td>
</tr>
<tr class="even">
<td><code id="drs_describe_jobs_:_maxResults">maxResults</code></td>
<td><p>Maximum number of Jobs to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code id="drs_describe_jobs_:_nextToken">nextToken</code></td>
<td><p>The token of the next Job to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          arn = "string",
          creationDateTime = "string",
          endDateTime = "string",
          initiatedBy = "START_RECOVERY"|"START_DRILL"|"FAILBACK"|"DIAGNOSTIC"|"TERMINATE_RECOVERY_INSTANCES"|"TARGET_ACCOUNT",
          jobID = "string",
          participatingServers = list(
            list(
              launchStatus = "PENDING"|"IN_PROGRESS"|"LAUNCHED"|"FAILED"|"TERMINATED",
              recoveryInstanceID = "string",
              sourceServerID = "string"
            )
          ),
          status = "PENDING"|"STARTED"|"COMPLETED",
          tags = list(
            "string"
          ),
          type = "LAUNCH"|"TERMINATE"|"CREATE_CONVERTED_SNAPSHOT"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_jobs(
      filters = list(
        fromDate = "string",
        jobIDs = list(
          "string"
        ),
        toDate = "string"
      ),
      maxResults = 123,
      nextToken = "string"
    )
