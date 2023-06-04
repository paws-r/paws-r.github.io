<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_describe_domain_auto_tunes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides scheduled Auto-Tune action details for the Elasticsearch domain, such as Auto-Tune action type, description, severity, and scheduled date

### Description

Provides scheduled Auto-Tune action details for the Elasticsearch
domain, such as Auto-Tune action type, description, severity, and
scheduled date.

### Usage

    elasticsearchservice_describe_domain_auto_tunes(DomainName, MaxResults,
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
id="elasticsearchservice_describe_domain_auto_tunes_:_DomainName">DomainName</code></td>
<td><p>[required] Specifies the domain name for which you want Auto-Tune
action details.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_describe_domain_auto_tunes_:_MaxResults">MaxResults</code></td>
<td><p>Set this value to limit the number of results returned. If not
specified, defaults to 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_domain_auto_tunes_:_NextToken">NextToken</code></td>
<td><p>NextToken is sent in case the earlier API call results contain
the NextToken. It is used for pagination.</p></td>
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
