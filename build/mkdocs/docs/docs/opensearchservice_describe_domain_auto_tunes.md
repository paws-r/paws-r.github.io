<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_describe_domain_auto_tunes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of optimizations that Auto-Tune has made to an Amazon OpenSearch Service domain

### Description

Returns the list of optimizations that Auto-Tune has made to an Amazon
OpenSearch Service domain. For more information, see [Auto-Tune for
Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html).

### Usage

    opensearchservice_describe_domain_auto_tunes(DomainName, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_describe_domain_auto_tunes_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the domain that you want Auto-Tune details
about.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_describe_domain_auto_tunes_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_describe_domain_auto_tunes_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>describe_domain_auto_tunes</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent
<code>describe_domain_auto_tunes</code> operations, which returns
results in the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoTunes = list(
        list(
          AutoTuneType = "SCHEDULED_ACTION",
          AutoTuneDetails = list(
            ScheduledAutoTuneDetails = list(
              Date = as.POSIXct(
                "2015-01-01"
              ),
              ActionType = "JVM_HEAP_SIZE_TUNING"|"JVM_YOUNG_GEN_TUNING",
              Action = "string",
              Severity = "LOW"|"MEDIUM"|"HIGH"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_domain_auto_tunes(
      DomainName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
