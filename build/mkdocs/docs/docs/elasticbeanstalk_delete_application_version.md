<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_delete_application_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified version from the specified application

### Description

Deletes the specified version from the specified application.

You cannot delete an application version that is associated with a
running environment.

### Usage

    elasticbeanstalk_delete_application_version(ApplicationName,
      VersionLabel, DeleteSourceBundle)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_delete_application_version_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application to which the version
belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_delete_application_version_:_VersionLabel">VersionLabel</code></td>
<td><p>[required] The label of the version to delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_delete_application_version_:_DeleteSourceBundle">DeleteSourceBundle</code></td>
<td><p>Set to <code>true</code> to delete the source bundle from your
storage bucket. Otherwise, the application version is deleted only from
Elastic Beanstalk and the source bundle remains in Amazon S3.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application_version(
      ApplicationName = "string",
      VersionLabel = "string",
      DeleteSourceBundle = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following operation deletes an application version named
    # 22a0-stage-150819_182129 for an application named my-app:
    svc$delete_application_version(
      ApplicationName = "my-app",
      DeleteSourceBundle = TRUE,
      VersionLabel = "22a0-stage-150819_182129"
    )

    ## End(Not run)
