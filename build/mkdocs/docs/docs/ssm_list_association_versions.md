<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_association_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all versions of an association for a specific association ID

### Description

Retrieves all versions of an association for a specific association ID.

### Usage

    ssm_list_association_versions(AssociationId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_association_versions_:_AssociationId">AssociationId</code></td>
<td><p>[required] The association ID for which you want to view all
versions.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_association_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_association_versions_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationVersions = list(
        list(
          AssociationId = "string",
          AssociationVersion = "string",
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          Name = "string",
          DocumentVersion = "string",
          Parameters = list(
            list(
              "string"
            )
          ),
          Targets = list(
            list(
              Key = "string",
              Values = list(
                "string"
              )
            )
          ),
          ScheduleExpression = "string",
          OutputLocation = list(
            S3Location = list(
              OutputS3Region = "string",
              OutputS3BucketName = "string",
              OutputS3KeyPrefix = "string"
            )
          ),
          AssociationName = "string",
          MaxErrors = "string",
          MaxConcurrency = "string",
          ComplianceSeverity = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"UNSPECIFIED",
          SyncCompliance = "AUTO"|"MANUAL",
          ApplyOnlyAtCronInterval = TRUE|FALSE,
          CalendarNames = list(
            "string"
          ),
          TargetLocations = list(
            list(
              Accounts = list(
                "string"
              ),
              Regions = list(
                "string"
              ),
              TargetLocationMaxConcurrency = "string",
              TargetLocationMaxErrors = "string",
              ExecutionRoleName = "string",
              TargetLocationAlarmConfiguration = list(
                IgnorePollAlarmFailure = TRUE|FALSE,
                Alarms = list(
                  list(
                    Name = "string"
                  )
                )
              )
            )
          ),
          ScheduleOffset = 123,
          TargetMaps = list(
            list(
              list(
                "string"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_association_versions(
      AssociationId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
