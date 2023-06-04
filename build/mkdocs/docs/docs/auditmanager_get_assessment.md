<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an assessment from Audit Manager

### Description

Returns an assessment from Audit Manager.

### Usage

    auditmanager_get_assessment(assessmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_get_assessment_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessment = list(
        arn = "string",
        awsAccount = list(
          id = "string",
          emailAddress = "string",
          name = "string"
        ),
        metadata = list(
          name = "string",
          id = "string",
          description = "string",
          complianceType = "string",
          status = "ACTIVE"|"INACTIVE",
          assessmentReportsDestination = list(
            destinationType = "S3",
            destination = "string"
          ),
          scope = list(
            awsAccounts = list(
              list(
                id = "string",
                emailAddress = "string",
                name = "string"
              )
            ),
            awsServices = list(
              list(
                serviceName = "string"
              )
            )
          ),
          roles = list(
            list(
              roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
              roleArn = "string"
            )
          ),
          delegations = list(
            list(
              id = "string",
              assessmentName = "string",
              assessmentId = "string",
              status = "IN_PROGRESS"|"UNDER_REVIEW"|"COMPLETE",
              roleArn = "string",
              roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
              creationTime = as.POSIXct(
                "2015-01-01"
              ),
              lastUpdated = as.POSIXct(
                "2015-01-01"
              ),
              controlSetId = "string",
              comment = "string",
              createdBy = "string"
            )
          ),
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdated = as.POSIXct(
            "2015-01-01"
          )
        ),
        framework = list(
          id = "string",
          arn = "string",
          metadata = list(
            name = "string",
            description = "string",
            logo = "string",
            complianceType = "string"
          ),
          controlSets = list(
            list(
              id = "string",
              description = "string",
              status = "ACTIVE"|"UNDER_REVIEW"|"REVIEWED",
              roles = list(
                list(
                  roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
                  roleArn = "string"
                )
              ),
              controls = list(
                list(
                  id = "string",
                  name = "string",
                  description = "string",
                  status = "UNDER_REVIEW"|"REVIEWED"|"INACTIVE",
                  response = "MANUAL"|"AUTOMATE"|"DEFER"|"IGNORE",
                  comments = list(
                    list(
                      authorName = "string",
                      commentBody = "string",
                      postedDate = as.POSIXct(
                        "2015-01-01"
                      )
                    )
                  ),
                  evidenceSources = list(
                    "string"
                  ),
                  evidenceCount = 123,
                  assessmentReportEvidenceCount = 123
                )
              ),
              delegations = list(
                list(
                  id = "string",
                  assessmentName = "string",
                  assessmentId = "string",
                  status = "IN_PROGRESS"|"UNDER_REVIEW"|"COMPLETE",
                  roleArn = "string",
                  roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
                  creationTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  lastUpdated = as.POSIXct(
                    "2015-01-01"
                  ),
                  controlSetId = "string",
                  comment = "string",
                  createdBy = "string"
                )
              ),
              systemEvidenceCount = 123,
              manualEvidenceCount = 123
            )
          )
        ),
        tags = list(
          "string"
        )
      ),
      userRole = list(
        roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
        roleArn = "string"
      )
    )

### Request syntax

    svc$get_assessment(
      assessmentId = "string"
    )
