<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_association_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status of the Amazon Web Services Systems Manager document (SSM document) associated with the specified managed node

### Description

Updates the status of the Amazon Web Services Systems Manager document
(SSM document) associated with the specified managed node.

`update_association_status` is primarily used by the Amazon Web Services
Systems Manager Agent (SSM Agent) to report status updates about your
associations and is only used for associations created with the
`InstanceId` legacy parameter.

### Usage

    ssm_update_association_status(Name, InstanceId, AssociationStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_update_association_status_:_Name">Name</code></td>
<td><p>[required] The name of the SSM document.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_association_status_:_InstanceId">InstanceId</code></td>
<td><p>[required] The managed node ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_association_status_:_AssociationStatus">AssociationStatus</code></td>
<td><p>[required] The association status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationDescription = list(
        Name = "string",
        InstanceId = "string",
        AssociationVersion = "string",
        Date = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdateAssociationDate = as.POSIXct(
          "2015-01-01"
        ),
        Status = list(
          Date = as.POSIXct(
            "2015-01-01"
          ),
          Name = "Pending"|"Success"|"Failed",
          Message = "string",
          AdditionalInfo = "string"
        ),
        Overview = list(
          Status = "string",
          DetailedStatus = "string",
          AssociationStatusAggregatedCount = list(
            123
          )
        ),
        DocumentVersion = "string",
        AutomationTargetParameterName = "string",
        Parameters = list(
          list(
            "string"
          )
        ),
        AssociationId = "string",
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
        LastExecutionDate = as.POSIXct(
          "2015-01-01"
        ),
        LastSuccessfulExecutionDate = as.POSIXct(
          "2015-01-01"
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
        ),
        AlarmConfiguration = list(
          IgnorePollAlarmFailure = TRUE|FALSE,
          Alarms = list(
            list(
              Name = "string"
            )
          )
        ),
        TriggeredAlarms = list(
          list(
            Name = "string",
            State = "UNKNOWN"|"ALARM"
          )
        )
      )
    )

### Request syntax

    svc$update_association_status(
      Name = "string",
      InstanceId = "string",
      AssociationStatus = list(
        Date = as.POSIXct(
          "2015-01-01"
        ),
        Name = "Pending"|"Success"|"Failed",
        Message = "string",
        AdditionalInfo = "string"
      )
    )
