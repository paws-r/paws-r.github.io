<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_create_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a project, which is the logical object in Evidently that can contain features, launches, and experiments

### Description

Creates a project, which is the logical object in Evidently that can
contain features, launches, and experiments. Use projects to group
similar features together.

To update an existing project, use `update_project`.

### Usage

    cloudwatchevidently_create_project(appConfigResource, dataDelivery,
      description, name, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_project_:_appConfigResource">appConfigResource</code></td>
<td><p>Use this parameter if the project will use <em>client-side
evaluation powered by AppConfig</em>. Client-side evaluation allows your
application to assign variations to user sessions locally instead of by
calling the <code>evaluate_feature</code> operation. This mitigates the
latency and availability risks that come with an API call. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-client-side-evaluation.html">Client-side
evaluation - powered by AppConfig.</a></p>
<p>This parameter is a structure that contains information about the
AppConfig application and environment that will be used as for
client-side evaluation.</p>
<p>To create a project that uses client-side evaluation, you must have
the <code>evidently:ExportProjectAsConfiguration</code>
permission.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_project_:_dataDelivery">dataDelivery</code></td>
<td><p>A structure that contains information about where Evidently is to
store evaluation events for longer term storage, if you choose to do so.
If you choose not to store these events, Evidently deletes them after
using them to produce metrics and other experiment results that you can
view.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_project_:_description">description</code></td>
<td><p>An optional description of the project.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_project_:_name">name</code></td>
<td><p>[required] The name for the project.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_project_:_tags">tags</code></td>
<td><p>Assigns one or more tags (key-value pairs) to the project.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.</p>
<p>Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.</p>
<p>You can associate as many as 50 tags with a project.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      project = list(
        activeExperimentCount = 123,
        activeLaunchCount = 123,
        appConfigResource = list(
          applicationId = "string",
          configurationProfileId = "string",
          environmentId = "string"
        ),
        arn = "string",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        dataDelivery = list(
          cloudWatchLogs = list(
            logGroup = "string"
          ),
          s3Destination = list(
            bucket = "string",
            prefix = "string"
          )
        ),
        description = "string",
        experimentCount = 123,
        featureCount = 123,
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        launchCount = 123,
        name = "string",
        status = "AVAILABLE"|"UPDATING",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_project(
      appConfigResource = list(
        applicationId = "string",
        environmentId = "string"
      ),
      dataDelivery = list(
        cloudWatchLogs = list(
          logGroup = "string"
        ),
        s3Destination = list(
          bucket = "string",
          prefix = "string"
        )
      ),
      description = "string",
      name = "string",
      tags = list(
        "string"
      )
    )
