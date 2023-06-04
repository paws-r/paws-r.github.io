<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_batch_get_build_batches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about one or more batch builds

### Description

Retrieves information about one or more batch builds.

### Usage

    codebuild_batch_get_build_batches(ids)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_batch_get_build_batches_:_ids">ids</code></td>
<td><p>[required] An array that contains the batch build identifiers to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      buildBatches = list(
        list(
          id = "string",
          arn = "string",
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          endTime = as.POSIXct(
            "2015-01-01"
          ),
          currentPhase = "string",
          buildBatchStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
          sourceVersion = "string",
          resolvedSourceVersion = "string",
          projectName = "string",
          phases = list(
            list(
              phaseType = "SUBMITTED"|"DOWNLOAD_BATCHSPEC"|"IN_PROGRESS"|"COMBINE_ARTIFACTS"|"SUCCEEDED"|"FAILED"|"STOPPED",
              phaseStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
              startTime = as.POSIXct(
                "2015-01-01"
              ),
              endTime = as.POSIXct(
                "2015-01-01"
              ),
              durationInSeconds = 123,
              contexts = list(
                list(
                  statusCode = "string",
                  message = "string"
                )
              )
            )
          ),
          source = list(
            type = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
            location = "string",
            gitCloneDepth = 123,
            gitSubmodulesConfig = list(
              fetchSubmodules = TRUE|FALSE
            ),
            buildspec = "string",
            auth = list(
              type = "OAUTH",
              resource = "string"
            ),
            reportBuildStatus = TRUE|FALSE,
            buildStatusConfig = list(
              context = "string",
              targetUrl = "string"
            ),
            insecureSsl = TRUE|FALSE,
            sourceIdentifier = "string"
          ),
          secondarySources = list(
            list(
              type = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
              location = "string",
              gitCloneDepth = 123,
              gitSubmodulesConfig = list(
                fetchSubmodules = TRUE|FALSE
              ),
              buildspec = "string",
              auth = list(
                type = "OAUTH",
                resource = "string"
              ),
              reportBuildStatus = TRUE|FALSE,
              buildStatusConfig = list(
                context = "string",
                targetUrl = "string"
              ),
              insecureSsl = TRUE|FALSE,
              sourceIdentifier = "string"
            )
          ),
          secondarySourceVersions = list(
            list(
              sourceIdentifier = "string",
              sourceVersion = "string"
            )
          ),
          artifacts = list(
            location = "string",
            sha256sum = "string",
            md5sum = "string",
            overrideArtifactName = TRUE|FALSE,
            encryptionDisabled = TRUE|FALSE,
            artifactIdentifier = "string",
            bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
          ),
          secondaryArtifacts = list(
            list(
              location = "string",
              sha256sum = "string",
              md5sum = "string",
              overrideArtifactName = TRUE|FALSE,
              encryptionDisabled = TRUE|FALSE,
              artifactIdentifier = "string",
              bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
            )
          ),
          cache = list(
            type = "NO_CACHE"|"S3"|"LOCAL",
            location = "string",
            modes = list(
              "LOCAL_DOCKER_LAYER_CACHE"|"LOCAL_SOURCE_CACHE"|"LOCAL_CUSTOM_CACHE"
            )
          ),
          environment = list(
            type = "WINDOWS_CONTAINER"|"LINUX_CONTAINER"|"LINUX_GPU_CONTAINER"|"ARM_CONTAINER"|"WINDOWS_SERVER_2019_CONTAINER",
            image = "string",
            computeType = "BUILD_GENERAL1_SMALL"|"BUILD_GENERAL1_MEDIUM"|"BUILD_GENERAL1_LARGE"|"BUILD_GENERAL1_2XLARGE",
            environmentVariables = list(
              list(
                name = "string",
                value = "string",
                type = "PLAINTEXT"|"PARAMETER_STORE"|"SECRETS_MANAGER"
              )
            ),
            privilegedMode = TRUE|FALSE,
            certificate = "string",
            registryCredential = list(
              credential = "string",
              credentialProvider = "SECRETS_MANAGER"
            ),
            imagePullCredentialsType = "CODEBUILD"|"SERVICE_ROLE"
          ),
          serviceRole = "string",
          logConfig = list(
            cloudWatchLogs = list(
              status = "ENABLED"|"DISABLED",
              groupName = "string",
              streamName = "string"
            ),
            s3Logs = list(
              status = "ENABLED"|"DISABLED",
              location = "string",
              encryptionDisabled = TRUE|FALSE,
              bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
            )
          ),
          buildTimeoutInMinutes = 123,
          queuedTimeoutInMinutes = 123,
          complete = TRUE|FALSE,
          initiator = "string",
          vpcConfig = list(
            vpcId = "string",
            subnets = list(
              "string"
            ),
            securityGroupIds = list(
              "string"
            )
          ),
          encryptionKey = "string",
          buildBatchNumber = 123,
          fileSystemLocations = list(
            list(
              type = "EFS",
              location = "string",
              mountPoint = "string",
              identifier = "string",
              mountOptions = "string"
            )
          ),
          buildBatchConfig = list(
            serviceRole = "string",
            combineArtifacts = TRUE|FALSE,
            restrictions = list(
              maximumBuildsAllowed = 123,
              computeTypesAllowed = list(
                "string"
              )
            ),
            timeoutInMins = 123,
            batchReportMode = "REPORT_INDIVIDUAL_BUILDS"|"REPORT_AGGREGATED_BATCH"
          ),
          buildGroups = list(
            list(
              identifier = "string",
              dependsOn = list(
                "string"
              ),
              ignoreFailure = TRUE|FALSE,
              currentBuildSummary = list(
                arn = "string",
                requestedOn = as.POSIXct(
                  "2015-01-01"
                ),
                buildStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
                primaryArtifact = list(
                  type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
                  location = "string",
                  identifier = "string"
                ),
                secondaryArtifacts = list(
                  list(
                    type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
                    location = "string",
                    identifier = "string"
                  )
                )
              ),
              priorBuildSummaryList = list(
                list(
                  arn = "string",
                  requestedOn = as.POSIXct(
                    "2015-01-01"
                  ),
                  buildStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
                  primaryArtifact = list(
                    type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
                    location = "string",
                    identifier = "string"
                  ),
                  secondaryArtifacts = list(
                    list(
                      type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
                      location = "string",
                      identifier = "string"
                    )
                  )
                )
              )
            )
          ),
          debugSessionEnabled = TRUE|FALSE
        )
      ),
      buildBatchesNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_build_batches(
      ids = list(
        "string"
      )
    )
