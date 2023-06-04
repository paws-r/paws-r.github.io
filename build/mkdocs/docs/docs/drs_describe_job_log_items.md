<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_describe_job_log_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a detailed Job log with pagination

### Description

Retrieves a detailed Job log with pagination.

### Usage

    drs_describe_job_log_items(jobID, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="drs_describe_job_log_items_:_jobID">jobID</code></td>
<td><p>[required] The ID of the Job for which Job log items will be
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_describe_job_log_items_:_maxResults">maxResults</code></td>
<td><p>Maximum number of Job log items to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_describe_job_log_items_:_nextToken">nextToken</code></td>
<td><p>The token of the next Job log items to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          event = "JOB_START"|"SERVER_SKIPPED"|"CLEANUP_START"|"CLEANUP_END"|"CLEANUP_FAIL"|"SNAPSHOT_START"|"SNAPSHOT_END"|"SNAPSHOT_FAIL"|"USING_PREVIOUS_SNAPSHOT"|"USING_PREVIOUS_SNAPSHOT_FAILED"|"CONVERSION_START"|"CONVERSION_END"|"CONVERSION_FAIL"|"LAUNCH_START"|"LAUNCH_FAILED"|"JOB_CANCEL"|"JOB_END",
          eventData = list(
            conversionProperties = list(
              dataTimestamp = "string",
              forceUefi = TRUE|FALSE,
              rootVolumeName = "string",
              volumeToConversionMap = list(
                list(
                  "string"
                )
              ),
              volumeToVolumeSize = list(
                123
              )
            ),
            conversionServerID = "string",
            rawError = "string",
            sourceServerID = "string",
            targetInstanceID = "string"
          ),
          logDateTime = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_job_log_items(
      jobID = "string",
      maxResults = 123,
      nextToken = "string"
    )
