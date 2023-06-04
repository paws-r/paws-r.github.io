<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_scaling_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the scaling parameters configured for a domain

### Description

Gets the scaling parameters configured for a domain. A domain's scaling
parameters specify the desired search instance type and replication
count. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html"
target="_blank">Configuring Scaling Options</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_describe_scaling_parameters(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_scaling_parameters_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScalingParameters = list(
        Options = list(
          DesiredInstanceType = "search.m1.small"|"search.m1.large"|"search.m2.xlarge"|"search.m2.2xlarge"|"search.m3.medium"|"search.m3.large"|"search.m3.xlarge"|"search.m3.2xlarge"|"search.small"|"search.medium"|"search.large"|"search.xlarge"|"search.2xlarge"|"search.previousgeneration.small"|"search.previousgeneration.large"|"search.previousgeneration.xlarge"|"search.previousgeneration.2xlarge",
          DesiredReplicationCount = 123,
          DesiredPartitionCount = 123
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

    svc$describe_scaling_parameters(
      DomainName = "string"
    )
