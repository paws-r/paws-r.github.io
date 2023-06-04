<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_instance_information</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your managed nodes, including information about the operating system platform, the version of SSM Agent installed on the managed node, node status, and so on

### Description

Describes one or more of your managed nodes, including information about
the operating system platform, the version of SSM Agent installed on the
managed node, node status, and so on.

If you specify one or more managed node IDs, it returns information for
those managed nodes. If you don't specify node IDs, it returns
information for all your managed nodes. If you specify a node ID that
isn't valid or a node that you don't own, you receive an error.

The `IamRole` field for this API operation is the Identity and Access
Management (IAM) role assigned to on-premises managed nodes. This call
doesn't return the IAM role for EC2 instances.

### Usage

    ssm_describe_instance_information(InstanceInformationFilterList,
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_instance_information_:_InstanceInformationFilterList">InstanceInformationFilterList</code></td>
<td><p>This is a legacy method. We recommend that you don't use this
method. Instead, use the <code>Filters</code> data type.
<code>Filters</code> enables you to return node information by filtering
based on tags applied to managed nodes.</p>
<p>Attempting to use <code>InstanceInformationFilterList</code> and
<code>Filters</code> leads to an exception error.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_instance_information_:_Filters">Filters</code></td>
<td><p>One or more filters. Use a filter to return a more specific list
of managed nodes. You can filter based on tags applied to your managed
nodes. Use this <code>Filters</code> data type instead of
<code>InstanceInformationFilterList</code>, which is
deprecated.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_instance_information_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_instance_information_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceInformationList = list(
        list(
          InstanceId = "string",
          PingStatus = "Online"|"ConnectionLost"|"Inactive",
          LastPingDateTime = as.POSIXct(
            "2015-01-01"
          ),
          AgentVersion = "string",
          IsLatestVersion = TRUE|FALSE,
          PlatformType = "Windows"|"Linux"|"MacOS",
          PlatformName = "string",
          PlatformVersion = "string",
          ActivationId = "string",
          IamRole = "string",
          RegistrationDate = as.POSIXct(
            "2015-01-01"
          ),
          ResourceType = "ManagedInstance"|"Document"|"EC2Instance",
          Name = "string",
          IPAddress = "string",
          ComputerName = "string",
          AssociationStatus = "string",
          LastAssociationExecutionDate = as.POSIXct(
            "2015-01-01"
          ),
          LastSuccessfulAssociationExecutionDate = as.POSIXct(
            "2015-01-01"
          ),
          AssociationOverview = list(
            DetailedStatus = "string",
            InstanceAssociationStatusAggregatedCount = list(
              123
            )
          ),
          SourceId = "string",
          SourceType = "AWS::EC2::Instance"|"AWS::IoT::Thing"|"AWS::SSM::ManagedInstance"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instance_information(
      InstanceInformationFilterList = list(
        list(
          key = "InstanceIds"|"AgentVersion"|"PingStatus"|"PlatformTypes"|"ActivationIds"|"IamRole"|"ResourceType"|"AssociationStatus",
          valueSet = list(
            "string"
          )
        )
      ),
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
