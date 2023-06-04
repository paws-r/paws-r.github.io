<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_get_finding_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns history for a Security Hub finding in the last 90 days

### Description

Returns history for a Security Hub finding in the last 90 days. The
history includes changes made to any fields in the Amazon Web Services
Security Finding Format (ASFF).

### Usage

    securityhub_get_finding_history(FindingIdentifier, StartTime, EndTime,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_get_finding_history_:_FindingIdentifier">FindingIdentifier</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_get_finding_history_:_StartTime">StartTime</code></td>
<td><p>An ISO 8601-formatted timestamp that indicates the start time of
the requested finding history. A correctly formatted example is <code
style="white-space: pre;">⁠2020-05-21T20:16:34.724Z⁠</code>. The value
cannot contain spaces, and date and time should be separated by
<code>T</code>. For more information, see <a
href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339
section 5.6, Internet Date/Time Format</a>.</p>
<p>If you provide values for both <code>StartTime</code> and
<code>EndTime</code>, Security Hub returns finding history for the
specified time period. If you provide a value for <code>StartTime</code>
but not for <code>EndTime</code>, Security Hub returns finding history
from the <code>StartTime</code> to the time at which the API is called.
If you provide a value for <code>EndTime</code> but not for
<code>StartTime</code>, Security Hub returns finding history from the <a
href="https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt">CreatedAt</a>
timestamp of the finding to the <code>EndTime</code>. If you provide
neither <code>StartTime</code> nor <code>EndTime</code>, Security Hub
returns finding history from the CreatedAt timestamp of the finding to
the time at which the API is called. In all of these scenarios, the
response is limited to 100 results, and the maximum time period is
limited to 90 days.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_get_finding_history_:_EndTime">EndTime</code></td>
<td><p>An ISO 8601-formatted timestamp that indicates the end time of
the requested finding history. A correctly formatted example is <code
style="white-space: pre;">⁠2020-05-21T20:16:34.724Z⁠</code>. The value
cannot contain spaces, and date and time should be separated by
<code>T</code>. For more information, see <a
href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339
section 5.6, Internet Date/Time Format</a>.</p>
<p>If you provide values for both <code>StartTime</code> and
<code>EndTime</code>, Security Hub returns finding history for the
specified time period. If you provide a value for <code>StartTime</code>
but not for <code>EndTime</code>, Security Hub returns finding history
from the <code>StartTime</code> to the time at which the API is called.
If you provide a value for <code>EndTime</code> but not for
<code>StartTime</code>, Security Hub returns finding history from the <a
href="https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt">CreatedAt</a>
timestamp of the finding to the <code>EndTime</code>. If you provide
neither <code>StartTime</code> nor <code>EndTime</code>, Security Hub
returns finding history from the CreatedAt timestamp of the finding to
the time at which the API is called. In all of these scenarios, the
response is limited to 100 results, and the maximum time period is
limited to 90 days.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_get_finding_history_:_NextToken">NextToken</code></td>
<td><p>A token for pagination purposes. Provide <code>NULL</code> as the
initial value. In subsequent requests, provide the token included in the
response to get up to an additional 100 results of finding history. If
you don’t provide <code>NextToken</code>, Security Hub returns up to 100
results of finding history for each request.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_get_finding_history_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned. If you don’t
provide it, Security Hub returns up to 100 results of finding
history.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Records = list(
        list(
          FindingIdentifier = list(
            Id = "string",
            ProductArn = "string"
          ),
          UpdateTime = as.POSIXct(
            "2015-01-01"
          ),
          FindingCreated = TRUE|FALSE,
          UpdateSource = list(
            Type = "BATCH_UPDATE_FINDINGS"|"BATCH_IMPORT_FINDINGS",
            Identity = "string"
          ),
          Updates = list(
            list(
              UpdatedField = "string",
              OldValue = "string",
              NewValue = "string"
            )
          ),
          NextToken = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_finding_history(
      FindingIdentifier = list(
        Id = "string",
        ProductArn = "string"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example retrieves the history of the specified finding
    # during the specified time frame. If the time frame permits, Security Hub
    # returns finding history for the last 90 days.
    svc$get_finding_history(
      EndTime = "2021-09-31T15:53:35.573Z",
      FindingIdentifier = list(
        Id = "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
        ProductArn = "arn:aws:securityhub:us-west-2:123456789012:product/123456789012/default"
      ),
      MaxResults = 2L,
      StartTime = "2021-09-30T15:53:35.573Z"
    )

    ## End(Not run)
