<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Glue DataBrew

### Description

Glue DataBrew is a visual, cloud-scale data-preparation service.
DataBrew simplifies data preparation tasks, targeting data issues that
are hard to spot and time-consuming to fix. DataBrew empowers users of
all technical levels to visualize the data and perform one-click data
transformations, with no coding required.

### Usage

    gluedatabrew(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- gluedatabrew(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_batch_delete_recipe_version/"> batch_delete_recipe_version </a></td>
<td style="text-align: left;">Deletes one or more versions of a recipe
at a time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_create_dataset/"> create_dataset </a></td>
<td style="text-align: left;">Creates a new DataBrew dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_create_profile_job/"> create_profile_job </a></td>
<td style="text-align: left;">Creates a new job to analyze a dataset and
create its data profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_create_project/"> create_project </a></td>
<td style="text-align: left;">Creates a new DataBrew project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_create_recipe/"> create_recipe </a></td>
<td style="text-align: left;">Creates a new DataBrew recipe</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_create_recipe_job/"> create_recipe_job </a></td>
<td style="text-align: left;">Creates a new job to transform input data,
using steps defined in an existing Glue DataBrew recipe</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_create_ruleset/"> create_ruleset </a></td>
<td style="text-align: left;">Creates a new ruleset that can be used in
a profile job to validate the data quality of a dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_create_schedule/"> create_schedule </a></td>
<td style="text-align: left;">Creates a new schedule for one or more
DataBrew jobs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_delete_dataset/"> delete_dataset </a></td>
<td style="text-align: left;">Deletes a dataset from DataBrew</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_delete_job/"> delete_job </a></td>
<td style="text-align: left;">Deletes the specified DataBrew job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_delete_project/"> delete_project </a></td>
<td style="text-align: left;">Deletes an existing DataBrew project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_delete_recipe_version/"> delete_recipe_version </a></td>
<td style="text-align: left;">Deletes a single version of a DataBrew
recipe</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_delete_ruleset/"> delete_ruleset </a></td>
<td style="text-align: left;">Deletes a ruleset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_delete_schedule/"> delete_schedule </a></td>
<td style="text-align: left;">Deletes the specified DataBrew
schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_describe_dataset/"> describe_dataset </a></td>
<td style="text-align: left;">Returns the definition of a specific
DataBrew dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_describe_job/"> describe_job </a></td>
<td style="text-align: left;">Returns the definition of a specific
DataBrew job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_describe_job_run/"> describe_job_run </a></td>
<td style="text-align: left;">Represents one run of a DataBrew job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_describe_project/"> describe_project </a></td>
<td style="text-align: left;">Returns the definition of a specific
DataBrew project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_describe_recipe/"> describe_recipe </a></td>
<td style="text-align: left;">Returns the definition of a specific
DataBrew recipe corresponding to a particular version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_describe_ruleset/"> describe_ruleset </a></td>
<td style="text-align: left;">Retrieves detailed information about the
ruleset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_describe_schedule/"> describe_schedule </a></td>
<td style="text-align: left;">Returns the definition of a specific
DataBrew schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_list_datasets/"> list_datasets </a></td>
<td style="text-align: left;">Lists all of the DataBrew datasets</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_list_job_runs/"> list_job_runs </a></td>
<td style="text-align: left;">Lists all of the previous runs of a
particular DataBrew job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_list_jobs/"> list_jobs </a></td>
<td style="text-align: left;">Lists all of the DataBrew jobs that are
defined</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_list_projects/"> list_projects </a></td>
<td style="text-align: left;">Lists all of the DataBrew projects that
are defined</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_list_recipes/"> list_recipes </a></td>
<td style="text-align: left;">Lists all of the DataBrew recipes that are
defined</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_list_recipe_versions/"> list_recipe_versions </a></td>
<td style="text-align: left;">Lists the versions of a particular
DataBrew recipe, except for LATEST_WORKING</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_list_rulesets/"> list_rulesets </a></td>
<td style="text-align: left;">List all rulesets available in the current
account or rulesets associated with a specific resource (dataset)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_list_schedules/"> list_schedules </a></td>
<td style="text-align: left;">Lists the DataBrew schedules that are
defined</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all the tags for a DataBrew
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_publish_recipe/"> publish_recipe </a></td>
<td style="text-align: left;">Publishes a new version of a DataBrew
recipe</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_send_project_session_action/"> send_project_session_action </a></td>
<td style="text-align: left;">Performs a recipe step within an
interactive DataBrew session that's currently open</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_start_job_run/"> start_job_run </a></td>
<td style="text-align: left;">Runs a DataBrew job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_start_project_session/"> start_project_session </a></td>
<td style="text-align: left;">Creates an interactive session, enabling
you to manipulate data in a DataBrew project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_stop_job_run/"> stop_job_run </a></td>
<td style="text-align: left;">Stops a particular run of a job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds metadata tags to a DataBrew resource,
such as a dataset, project, recipe, job, or schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes metadata tags from a DataBrew
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_update_dataset/"> update_dataset </a></td>
<td style="text-align: left;">Modifies the definition of an existing
DataBrew dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_update_profile_job/"> update_profile_job </a></td>
<td style="text-align: left;">Modifies the definition of an existing
profile job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_update_project/"> update_project </a></td>
<td style="text-align: left;">Modifies the definition of an existing
DataBrew project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_update_recipe/"> update_recipe </a></td>
<td style="text-align: left;">Modifies the definition of the
LATEST_WORKING version of a DataBrew recipe</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_update_recipe_job/"> update_recipe_job </a></td>
<td style="text-align: left;">Modifies the definition of an existing
DataBrew recipe job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../gluedatabrew_update_ruleset/"> update_ruleset </a></td>
<td style="text-align: left;">Updates specified ruleset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../gluedatabrew_update_schedule/"> update_schedule </a></td>
<td style="text-align: left;">Modifies the definition of an existing
DataBrew schedule</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- gluedatabrew()
    svc$batch_delete_recipe_version(
      Foo = 123
    )

    ## End(Not run)
