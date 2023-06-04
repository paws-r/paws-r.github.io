<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_list_archives</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your archives

### Description

Lists your archives. You can either list all the archives or you can
provide a prefix to match to the archive names. Filter parameters are
exclusive.

### Usage

    eventbridge_list_archives(NamePrefix, EventSourceArn, State, NextToken,
      Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_list_archives_:_NamePrefix">NamePrefix</code></td>
<td><p>A name prefix to filter the archives returned. Only archives with
name that match the prefix are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_archives_:_EventSourceArn">EventSourceArn</code></td>
<td><p>The ARN of the event source associated with the archive.</p></td>
</tr>
<tr class="odd">
<td><code id="eventbridge_list_archives_:_State">State</code></td>
<td><p>The state of the archive.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_archives_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="eventbridge_list_archives_:_Limit">Limit</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Archives = list(
        list(
          ArchiveName = "string",
          EventSourceArn = "string",
          State = "ENABLED"|"DISABLED"|"CREATING"|"UPDATING"|"CREATE_FAILED"|"UPDATE_FAILED",
          StateReason = "string",
          RetentionDays = 123,
          SizeBytes = 123,
          EventCount = 123,
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_archives(
      NamePrefix = "string",
      EventSourceArn = "string",
      State = "ENABLED"|"DISABLED"|"CREATING"|"UPDATING"|"CREATE_FAILED"|"UPDATE_FAILED",
      NextToken = "string",
      Limit = 123
    )
