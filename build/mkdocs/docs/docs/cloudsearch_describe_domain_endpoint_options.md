<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_domain_endpoint_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS

### Description

Returns the domain's endpoint options, specifically whether all requests
to the domain must arrive over HTTPS. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html"
target="_blank">Configuring Domain Endpoint Options</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_describe_domain_endpoint_options(DomainName, Deployed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_domain_endpoint_options_:_DomainName">DomainName</code></td>
<td><p>[required] A string that represents the name of a
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_describe_domain_endpoint_options_:_Deployed">Deployed</code></td>
<td><p>Whether to retrieve the latest configuration (which might be in a
Processing state) or the current, active configuration. Defaults to
<code>false</code>.</p></td>
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

    svc$describe_domain_endpoint_options(
      DomainName = "string",
      Deployed = TRUE|FALSE
    )
