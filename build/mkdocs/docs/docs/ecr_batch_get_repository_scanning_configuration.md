<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_batch_get_repository_scanning_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the scanning configuration for one or more repositories

### Description

Gets the scanning configuration for one or more repositories.

### Usage

    ecr_batch_get_repository_scanning_configuration(repositoryNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_batch_get_repository_scanning_configuration_:_repositoryNames">repositoryNames</code></td>
<td><p>[required] One or more repository names to get the scanning
configuration for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      scanningConfigurations = list(
        list(
          repositoryArn = "string",
          repositoryName = "string",
          scanOnPush = TRUE|FALSE,
          scanFrequency = "SCAN_ON_PUSH"|"CONTINUOUS_SCAN"|"MANUAL",
          appliedScanFilters = list(
            list(
              filter = "string",
              filterType = "WILDCARD"
            )
          )
        )
      ),
      failures = list(
        list(
          repositoryName = "string",
          failureCode = "REPOSITORY_NOT_FOUND",
          failureReason = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_repository_scanning_configuration(
      repositoryNames = list(
        "string"
      )
    )
