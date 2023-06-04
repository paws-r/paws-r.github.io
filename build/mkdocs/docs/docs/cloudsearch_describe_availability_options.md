<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_availability_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the availability options configured for a domain

### Description

Gets the availability options configured for a domain. By default, shows
the configuration with any pending changes. Set the `Deployed` option to
`true` to show the active configuration and exclude pending changes. For
more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html"
target="_blank">Configuring Availability Options</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_describe_availability_options(DomainName, Deployed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_availability_options_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_describe_availability_options_:_Deployed">Deployed</code></td>
<td><p>Whether to display the deployed configuration (<code>true</code>)
or include any pending changes (<code>false</code>). Defaults to
<code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AvailabilityOptions = list(
        Options = TRUE|FALSE,
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

    svc$describe_availability_options(
      DomainName = "string",
      Deployed = TRUE|FALSE
    )
