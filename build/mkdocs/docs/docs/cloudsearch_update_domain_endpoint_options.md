<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_update_domain_endpoint_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS

### Description

Updates the domain's endpoint options, specifically whether all requests
to the domain must arrive over HTTPS. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html"
target="_blank">Configuring Domain Endpoint Options</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_update_domain_endpoint_options(DomainName,
      DomainEndpointOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_update_domain_endpoint_options_:_DomainName">DomainName</code></td>
<td><p>[required] A string that represents the name of a
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_update_domain_endpoint_options_:_DomainEndpointOptions">DomainEndpointOptions</code></td>
<td><p>[required] Whether to require that all requests to the domain
arrive over HTTPS. We recommend Policy-Min-TLS-1-2-2019-07 for
TLSSecurityPolicy. For compatibility with older clients, the default is
Policy-Min-TLS-1-0-2019-07.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainEndpointOptions = list(
        Options = list(
          EnforceHTTPS = TRUE|FALSE,
          TLSSecurityPolicy = "Policy-Min-TLS-1-0-2019-07"|"Policy-Min-TLS-1-2-2019-07"
        ),
        Status = list(
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateVersion = 123,
          State = "RequiresIndexDocuments"|"Processing"|"Active"|"FailedToValidate",
          PendingDeletion = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$update_domain_endpoint_options(
      DomainName = "string",
      DomainEndpointOptions = list(
        EnforceHTTPS = TRUE|FALSE,
        TLSSecurityPolicy = "Policy-Min-TLS-1-0-2019-07"|"Policy-Min-TLS-1-2-2019-07"
      )
    )
