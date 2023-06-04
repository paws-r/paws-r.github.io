<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_get_log_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all of the fields and values of a single log event

### Description

Retrieves all of the fields and values of a single log event. All fields
are retrieved, even if the original query that produced the
`logRecordPointer` retrieved only a subset of fields. Fields are
returned as field name/field value pairs.

The full unparsed log event is returned within `⁠@message⁠`.

### Usage

    cloudwatchlogs_get_log_record(logRecordPointer, unmask)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_get_log_record_:_logRecordPointer">logRecordPointer</code></td>
<td><p>[required] The pointer corresponding to the log event record you
want to retrieve. You get this from the response of a
<code>get_query_results</code> operation. In that response, the value of
the <code style="white-space: pre;">⁠@ptr⁠</code> field for a log event is
the value to use as <code>logRecordPointer</code> to retrieve that
complete log event record.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchlogs_get_log_record_:_unmask">unmask</code></td>
<td><p>Specify <code>true</code> to display the log event fields with
all sensitive data unmasked and visible. The default is
<code>false</code>.</p>
<p>To use this operation with this parameter, you must be signed into an
account with the <code>logs:Unmask</code> permission.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      logRecord = list(
        "string"
      )
    )

### Request syntax

    svc$get_log_record(
      logRecordPointer = "string",
      unmask = TRUE|FALSE
    )
