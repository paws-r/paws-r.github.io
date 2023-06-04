<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_failures_for_license_configuration_operations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the license configuration operations that failed

### Description

Lists the license configuration operations that failed.

### Usage

    licensemanager_list_failures_for_license_configuration_operations(
      LicenseConfigurationArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_failures_for_license_configuration_operations_:_LicenseConfigurationArn">LicenseConfigurationArn</code></td>
<td><p>[required] Amazon Resource Name of the license
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_failures_for_license_configuration_operations_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_failures_for_license_configuration_operations_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseOperationFailureList = list(
        list(
          ResourceArn = "string",
          ResourceType = "EC2_INSTANCE"|"EC2_HOST"|"EC2_AMI"|"RDS"|"SYSTEMS_MANAGER_MANAGED_INSTANCE",
          ErrorMessage = "string",
          FailureTime = as.POSIXct(
            "2015-01-01"
          ),
          OperationName = "string",
          ResourceOwnerId = "string",
          OperationRequestedBy = "string",
          MetadataList = list(
            list(
              Name = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_failures_for_license_configuration_operations(
      LicenseConfigurationArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
