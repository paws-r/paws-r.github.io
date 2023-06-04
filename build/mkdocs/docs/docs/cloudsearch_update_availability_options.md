<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_update_availability_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures the availability options for a domain

### Description

Configures the availability options for a domain. Enabling the Multi-AZ
option expands an Amazon CloudSearch domain to an additional
Availability Zone in the same Region to increase fault tolerance in the
event of a service disruption. Changes to the Multi-AZ option can take
about half an hour to become active. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html"
target="_blank">Configuring Availability Options</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_update_availability_options(DomainName, MultiAZ)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_update_availability_options_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_update_availability_options_:_MultiAZ">MultiAZ</code></td>
<td><p>[required] You expand an existing search domain to a second
Availability Zone by setting the Multi-AZ option to true. Similarly, you
can turn off the Multi-AZ option to downgrade the domain to a single
Availability Zone by setting the Multi-AZ option to
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

    svc$update_availability_options(
      DomainName = "string",
      MultiAZ = TRUE|FALSE
    )
