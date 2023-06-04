<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_service_access_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the access policies that control access to the domain's document and search endpoints

### Description

Gets information about the access policies that control access to the
domain's document and search endpoints. By default, shows the
configuration with any pending changes. Set the `Deployed` option to
`true` to show the active configuration and exclude pending changes. For
more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html"
target="_blank">Configuring Access for a Search Domain</a> in the
*Amazon CloudSearch Developer Guide*.

### Usage

    cloudsearch_describe_service_access_policies(DomainName, Deployed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_service_access_policies_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_describe_service_access_policies_:_Deployed">Deployed</code></td>
<td><p>Whether to display the deployed configuration (<code>true</code>)
or include any pending changes (<code>false</code>). Defaults to
<code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessPolicies = list(
        Options = "string",
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

    svc$describe_service_access_policies(
      DomainName = "string",
      Deployed = TRUE|FALSE
    )
