<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_check_dns_availability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Checks if the specified CNAME is available

### Description

Checks if the specified CNAME is available.

### Usage

    elasticbeanstalk_check_dns_availability(CNAMEPrefix)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_check_dns_availability_:_CNAMEPrefix">CNAMEPrefix</code></td>
<td><p>[required] The prefix used when this CNAME is reserved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Available = TRUE|FALSE,
      FullyQualifiedCNAME = "string"
    )

### Request syntax

    svc$check_dns_availability(
      CNAMEPrefix = "string"
    )

### Examples

    ## Not run: 
    # The following operation checks the availability of the subdomain
    # my-cname:
    svc$check_dns_availability(
      CNAMEPrefix = "my-cname"
    )

    ## End(Not run)
