<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Glue

### Description

Glue

Defines the public endpoint for the Glue service.

### Usage

    glue(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_:_config">config</code></td>
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

    svc <- glue(
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
<td style="text-align: left;"><a href="../glue_batch_create_partition/"> batch_create_partition </a></td>
<td style="text-align: left;">Creates one or more partitions in a batch
operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_batch_delete_connection/"> batch_delete_connection </a></td>
<td style="text-align: left;">Deletes a list of connection definitions
from the Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_batch_delete_partition/"> batch_delete_partition </a></td>
<td style="text-align: left;">Deletes one or more partitions in a batch
operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_batch_delete_table/"> batch_delete_table </a></td>
<td style="text-align: left;">Deletes multiple tables at once</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_batch_delete_table_version/"> batch_delete_table_version </a></td>
<td style="text-align: left;">Deletes a specified batch of versions of a
table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_batch_get_blueprints/"> batch_get_blueprints </a></td>
<td style="text-align: left;">Retrieves information about a list of
blueprints</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_batch_get_crawlers/"> batch_get_crawlers </a></td>
<td style="text-align: left;">Returns a list of resource metadata for a
given list of crawler names</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_batch_get_custom_entity_types/"> batch_get_custom_entity_types </a></td>
<td style="text-align: left;">Retrieves the details for the custom
patterns specified by a list of names</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_batch_get_data_quality_result/"> batch_get_data_quality_result </a></td>
<td style="text-align: left;">Retrieves a list of data quality results
for the specified result IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_batch_get_dev_endpoints/"> batch_get_dev_endpoints </a></td>
<td style="text-align: left;">Returns a list of resource metadata for a
given list of development endpoint names</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_batch_get_jobs/"> batch_get_jobs </a></td>
<td style="text-align: left;">Returns a list of resource metadata for a
given list of job names</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_batch_get_partition/"> batch_get_partition </a></td>
<td style="text-align: left;">Retrieves partitions in a batch
request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_batch_get_triggers/"> batch_get_triggers </a></td>
<td style="text-align: left;">Returns a list of resource metadata for a
given list of trigger names</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_batch_get_workflows/"> batch_get_workflows </a></td>
<td style="text-align: left;">Returns a list of resource metadata for a
given list of workflow names</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_batch_stop_job_run/"> batch_stop_job_run </a></td>
<td style="text-align: left;">Stops one or more job runs for a specified
job definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_batch_update_partition/"> batch_update_partition </a></td>
<td style="text-align: left;">Updates one or more partitions in a batch
operation</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../glue_cancel_data_quality_rule_recommendation_run/"> cancel_data_quality_rule_recommendation_run </a></td>
<td style="text-align: left;">Cancels the specified recommendation run
that was being used to generate rules</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../glue_cancel_data_quality_ruleset_evaluation_run/"> cancel_data_quality_ruleset_evaluation_run </a></td>
<td style="text-align: left;">Cancels a run where a ruleset is being
evaluated against a data source</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_cancel_ml_task_run/"> cancel_ml_task_run </a></td>
<td style="text-align: left;">Cancels (stops) a task run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_cancel_statement/"> cancel_statement </a></td>
<td style="text-align: left;">Cancels the statement</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_check_schema_version_validity/"> check_schema_version_validity </a></td>
<td style="text-align: left;">Validates the supplied schema</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_blueprint/"> create_blueprint </a></td>
<td style="text-align: left;">Registers a blueprint with Glue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_classifier/"> create_classifier </a></td>
<td style="text-align: left;">Creates a classifier in the user's
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_connection/"> create_connection </a></td>
<td style="text-align: left;">Creates a connection definition in the
Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_crawler/"> create_crawler </a></td>
<td style="text-align: left;">Creates a new crawler with specified
targets, role, configuration, and optional schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_custom_entity_type/"> create_custom_entity_type </a></td>
<td style="text-align: left;">Creates a custom pattern that is used to
detect sensitive data across the columns and rows of your structured
data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_database/"> create_database </a></td>
<td style="text-align: left;">Creates a new database in a Data
Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_data_quality_ruleset/"> create_data_quality_ruleset </a></td>
<td style="text-align: left;">Creates a data quality ruleset with DQDL
rules applied to a specified Glue table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_dev_endpoint/"> create_dev_endpoint </a></td>
<td style="text-align: left;">Creates a new development endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_job/"> create_job </a></td>
<td style="text-align: left;">Creates a new job definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_ml_transform/"> create_ml_transform </a></td>
<td style="text-align: left;">Creates an Glue machine learning
transform</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_partition/"> create_partition </a></td>
<td style="text-align: left;">Creates a new partition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_partition_index/"> create_partition_index </a></td>
<td style="text-align: left;">Creates a specified partition index in an
existing table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_registry/"> create_registry </a></td>
<td style="text-align: left;">Creates a new registry which may be used
to hold a collection of schemas</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_schema/"> create_schema </a></td>
<td style="text-align: left;">Creates a new schema set and registers the
schema definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_script/"> create_script </a></td>
<td style="text-align: left;">Transforms a directed acyclic graph (DAG)
into code</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_security_configuration/"> create_security_configuration </a></td>
<td style="text-align: left;">Creates a new security configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_session/"> create_session </a></td>
<td style="text-align: left;">Creates a new session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_table/"> create_table </a></td>
<td style="text-align: left;">Creates a new table definition in the Data
Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_trigger/"> create_trigger </a></td>
<td style="text-align: left;">Creates a new trigger</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_create_user_defined_function/"> create_user_defined_function </a></td>
<td style="text-align: left;">Creates a new function definition in the
Data Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_create_workflow/"> create_workflow </a></td>
<td style="text-align: left;">Creates a new workflow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_blueprint/"> delete_blueprint </a></td>
<td style="text-align: left;">Deletes an existing blueprint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_classifier/"> delete_classifier </a></td>
<td style="text-align: left;">Removes a classifier from the Data
Catalog</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../glue_delete_column_statistics_for_partition/"> delete_column_statistics_for_partition </a></td>
<td style="text-align: left;">Delete the partition column statistics of
a column</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_column_statistics_for_table/"> delete_column_statistics_for_table </a></td>
<td style="text-align: left;">Retrieves table statistics of columns</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_connection/"> delete_connection </a></td>
<td style="text-align: left;">Deletes a connection from the Data
Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_crawler/"> delete_crawler </a></td>
<td style="text-align: left;">Removes a specified crawler from the Glue
Data Catalog, unless the crawler state is RUNNING</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_custom_entity_type/"> delete_custom_entity_type </a></td>
<td style="text-align: left;">Deletes a custom pattern by specifying its
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_database/"> delete_database </a></td>
<td style="text-align: left;">Removes a specified database from a Data
Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_data_quality_ruleset/"> delete_data_quality_ruleset </a></td>
<td style="text-align: left;">Deletes a data quality ruleset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_dev_endpoint/"> delete_dev_endpoint </a></td>
<td style="text-align: left;">Deletes a specified development
endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_job/"> delete_job </a></td>
<td style="text-align: left;">Deletes a specified job definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_ml_transform/"> delete_ml_transform </a></td>
<td style="text-align: left;">Deletes an Glue machine learning
transform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_partition/"> delete_partition </a></td>
<td style="text-align: left;">Deletes a specified partition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_partition_index/"> delete_partition_index </a></td>
<td style="text-align: left;">Deletes a specified partition index from
an existing table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_registry/"> delete_registry </a></td>
<td style="text-align: left;">Delete the entire registry including
schema and all of its versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a specified policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_schema/"> delete_schema </a></td>
<td style="text-align: left;">Deletes the entire schema set, including
the schema set and all of its versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_schema_versions/"> delete_schema_versions </a></td>
<td style="text-align: left;">Remove versions from the specified
schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_security_configuration/"> delete_security_configuration </a></td>
<td style="text-align: left;">Deletes a specified security
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_session/"> delete_session </a></td>
<td style="text-align: left;">Deletes the session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_table/"> delete_table </a></td>
<td style="text-align: left;">Removes a table definition from the Data
Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_table_version/"> delete_table_version </a></td>
<td style="text-align: left;">Deletes a specified version of a
table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_trigger/"> delete_trigger </a></td>
<td style="text-align: left;">Deletes a specified trigger</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_delete_user_defined_function/"> delete_user_defined_function </a></td>
<td style="text-align: left;">Deletes an existing function definition
from the Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_delete_workflow/"> delete_workflow </a></td>
<td style="text-align: left;">Deletes a workflow</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_blueprint/"> get_blueprint </a></td>
<td style="text-align: left;">Retrieves the details of a blueprint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_blueprint_run/"> get_blueprint_run </a></td>
<td style="text-align: left;">Retrieves the details of a blueprint
run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_blueprint_runs/"> get_blueprint_runs </a></td>
<td style="text-align: left;">Retrieves the details of blueprint runs
for a specified blueprint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_catalog_import_status/"> get_catalog_import_status </a></td>
<td style="text-align: left;">Retrieves the status of a migration
operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_classifier/"> get_classifier </a></td>
<td style="text-align: left;">Retrieve a classifier by name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_classifiers/"> get_classifiers </a></td>
<td style="text-align: left;">Lists all classifier objects in the Data
Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_column_statistics_for_partition/"> get_column_statistics_for_partition </a></td>
<td style="text-align: left;">Retrieves partition statistics of
columns</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_column_statistics_for_table/"> get_column_statistics_for_table </a></td>
<td style="text-align: left;">Retrieves table statistics of columns</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_connection/"> get_connection </a></td>
<td style="text-align: left;">Retrieves a connection definition from the
Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_connections/"> get_connections </a></td>
<td style="text-align: left;">Retrieves a list of connection definitions
from the Data Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_crawler/"> get_crawler </a></td>
<td style="text-align: left;">Retrieves metadata for a specified
crawler</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_crawler_metrics/"> get_crawler_metrics </a></td>
<td style="text-align: left;">Retrieves metrics about specified
crawlers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_crawlers/"> get_crawlers </a></td>
<td style="text-align: left;">Retrieves metadata for all crawlers
defined in the customer account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_custom_entity_type/"> get_custom_entity_type </a></td>
<td style="text-align: left;">Retrieves the details of a custom pattern
by specifying its name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_database/"> get_database </a></td>
<td style="text-align: left;">Retrieves the definition of a specified
database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_databases/"> get_databases </a></td>
<td style="text-align: left;">Retrieves all databases defined in a given
Data Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_data_catalog_encryption_settings/"> get_data_catalog_encryption_settings </a></td>
<td style="text-align: left;">Retrieves the security configuration for a
specified catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_dataflow_graph/"> get_dataflow_graph </a></td>
<td style="text-align: left;">Transforms a Python script into a directed
acyclic graph (DAG)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_data_quality_result/"> get_data_quality_result </a></td>
<td style="text-align: left;">Retrieves the result of a data quality
rule evaluation</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../glue_get_data_quality_rule_recommendation_run/"> get_data_quality_rule_recommendation_run </a></td>
<td style="text-align: left;">Gets the specified recommendation run that
was used to generate rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_data_quality_ruleset/"> get_data_quality_ruleset </a></td>
<td style="text-align: left;">Returns an existing ruleset by identifier
or name</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../glue_get_data_quality_ruleset_evaluation_run/"> get_data_quality_ruleset_evaluation_run </a></td>
<td style="text-align: left;">Retrieves a specific run where a ruleset
is evaluated against a data source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_dev_endpoint/"> get_dev_endpoint </a></td>
<td style="text-align: left;">Retrieves information about a specified
development endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_dev_endpoints/"> get_dev_endpoints </a></td>
<td style="text-align: left;">Retrieves all the development endpoints in
this Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_job/"> get_job </a></td>
<td style="text-align: left;">Retrieves an existing job definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_job_bookmark/"> get_job_bookmark </a></td>
<td style="text-align: left;">Returns information on a job bookmark
entry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_job_run/"> get_job_run </a></td>
<td style="text-align: left;">Retrieves the metadata for a given job
run</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_job_runs/"> get_job_runs </a></td>
<td style="text-align: left;">Retrieves metadata for all runs of a given
job definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_jobs/"> get_jobs </a></td>
<td style="text-align: left;">Retrieves all current job definitions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_mapping/"> get_mapping </a></td>
<td style="text-align: left;">Creates mappings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_ml_task_run/"> get_ml_task_run </a></td>
<td style="text-align: left;">Gets details for a specific task run on a
machine learning transform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_ml_task_runs/"> get_ml_task_runs </a></td>
<td style="text-align: left;">Gets a list of runs for a machine learning
transform</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_ml_transform/"> get_ml_transform </a></td>
<td style="text-align: left;">Gets an Glue machine learning transform
artifact and all its corresponding metadata</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_ml_transforms/"> get_ml_transforms </a></td>
<td style="text-align: left;">Gets a sortable, filterable list of
existing Glue machine learning transforms</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_partition/"> get_partition </a></td>
<td style="text-align: left;">Retrieves information about a specified
partition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_partition_indexes/"> get_partition_indexes </a></td>
<td style="text-align: left;">Retrieves the partition indexes associated
with a table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_partitions/"> get_partitions </a></td>
<td style="text-align: left;">Retrieves information about the partitions
in a table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_plan/"> get_plan </a></td>
<td style="text-align: left;">Gets code to perform a specified
mapping</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_registry/"> get_registry </a></td>
<td style="text-align: left;">Describes the specified registry in
detail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_resource_policies/"> get_resource_policies </a></td>
<td style="text-align: left;">Retrieves the resource policies set on
individual resources by Resource Access Manager during cross-account
permission grants</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_resource_policy/"> get_resource_policy </a></td>
<td style="text-align: left;">Retrieves a specified resource policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_schema/"> get_schema </a></td>
<td style="text-align: left;">Describes the specified schema in
detail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_schema_by_definition/"> get_schema_by_definition </a></td>
<td style="text-align: left;">Retrieves a schema by the
SchemaDefinition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_schema_version/"> get_schema_version </a></td>
<td style="text-align: left;">Get the specified schema by its unique ID
assigned when a version of the schema is created or registered</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_schema_versions_diff/"> get_schema_versions_diff </a></td>
<td style="text-align: left;">Fetches the schema version difference in
the specified difference type between two stored schema versions in the
Schema Registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_security_configuration/"> get_security_configuration </a></td>
<td style="text-align: left;">Retrieves a specified security
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_security_configurations/"> get_security_configurations </a></td>
<td style="text-align: left;">Retrieves a list of all security
configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_session/"> get_session </a></td>
<td style="text-align: left;">Retrieves the session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_statement/"> get_statement </a></td>
<td style="text-align: left;">Retrieves the statement</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_table/"> get_table </a></td>
<td style="text-align: left;">Retrieves the Table definition in a Data
Catalog for a specified table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_tables/"> get_tables </a></td>
<td style="text-align: left;">Retrieves the definitions of some or all
of the tables in a given Database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_table_version/"> get_table_version </a></td>
<td style="text-align: left;">Retrieves a specified version of a
table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_table_versions/"> get_table_versions </a></td>
<td style="text-align: left;">Retrieves a list of strings that identify
available versions of a specified table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_tags/"> get_tags </a></td>
<td style="text-align: left;">Retrieves a list of tags associated with a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_trigger/"> get_trigger </a></td>
<td style="text-align: left;">Retrieves the definition of a trigger</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_triggers/"> get_triggers </a></td>
<td style="text-align: left;">Gets all the triggers associated with a
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_unfiltered_partition_metadata/"> get_unfiltered_partition_metadata </a></td>
<td style="text-align: left;">Retrieves partition metadata from the Data
Catalog that contains unfiltered metadata</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_unfiltered_partitions_metadata/"> get_unfiltered_partitions_metadata </a></td>
<td style="text-align: left;">Retrieves partition metadata from the Data
Catalog that contains unfiltered metadata</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_unfiltered_table_metadata/"> get_unfiltered_table_metadata </a></td>
<td style="text-align: left;">Retrieves table metadata from the Data
Catalog that contains unfiltered metadata</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_user_defined_function/"> get_user_defined_function </a></td>
<td style="text-align: left;">Retrieves a specified function definition
from the Data Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_user_defined_functions/"> get_user_defined_functions </a></td>
<td style="text-align: left;">Retrieves multiple function definitions
from the Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_workflow/"> get_workflow </a></td>
<td style="text-align: left;">Retrieves resource metadata for a
workflow</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_workflow_run/"> get_workflow_run </a></td>
<td style="text-align: left;">Retrieves the metadata for a given
workflow run</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_get_workflow_run_properties/"> get_workflow_run_properties </a></td>
<td style="text-align: left;">Retrieves the workflow run properties
which were set during the run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_get_workflow_runs/"> get_workflow_runs </a></td>
<td style="text-align: left;">Retrieves metadata for all runs of a given
workflow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_import_catalog_to_glue/"> import_catalog_to_glue </a></td>
<td style="text-align: left;">Imports an existing Amazon Athena Data
Catalog to Glue</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_list_blueprints/"> list_blueprints </a></td>
<td style="text-align: left;">Lists all the blueprint names in an
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_list_crawlers/"> list_crawlers </a></td>
<td style="text-align: left;">Retrieves the names of all crawler
resources in this Amazon Web Services account, or the resources with the
specified tag</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_list_crawls/"> list_crawls </a></td>
<td style="text-align: left;">Returns all the crawls of a specified
crawler</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_list_custom_entity_types/"> list_custom_entity_types </a></td>
<td style="text-align: left;">Lists all the custom patterns that have
been created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_list_data_quality_results/"> list_data_quality_results </a></td>
<td style="text-align: left;">Returns all data quality execution results
for your account</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../glue_list_data_quality_rule_recommendation_runs/"> list_data_quality_rule_recommendation_runs </a></td>
<td style="text-align: left;">Lists the recommendation runs meeting the
filter criteria</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../glue_list_data_quality_ruleset_evaluation_runs/"> list_data_quality_ruleset_evaluation_runs </a></td>
<td style="text-align: left;">Lists all the runs meeting the filter
criteria, where a ruleset is evaluated against a data source</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_list_data_quality_rulesets/"> list_data_quality_rulesets </a></td>
<td style="text-align: left;">Returns a paginated list of rulesets for
the specified list of Glue tables</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_list_dev_endpoints/"> list_dev_endpoints </a></td>
<td style="text-align: left;">Retrieves the names of all DevEndpoint
resources in this Amazon Web Services account, or the resources with the
specified tag</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_list_jobs/"> list_jobs </a></td>
<td style="text-align: left;">Retrieves the names of all job resources
in this Amazon Web Services account, or the resources with the specified
tag</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_list_ml_transforms/"> list_ml_transforms </a></td>
<td style="text-align: left;">Retrieves a sortable, filterable list of
existing Glue machine learning transforms in this Amazon Web Services
account, or the resources with the specified tag</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_list_registries/"> list_registries </a></td>
<td style="text-align: left;">Returns a list of registries that you have
created, with minimal registry information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_list_schemas/"> list_schemas </a></td>
<td style="text-align: left;">Returns a list of schemas with minimal
details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_list_schema_versions/"> list_schema_versions </a></td>
<td style="text-align: left;">Returns a list of schema versions that you
have created, with minimal information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_list_sessions/"> list_sessions </a></td>
<td style="text-align: left;">Retrieve a list of sessions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_list_statements/"> list_statements </a></td>
<td style="text-align: left;">Lists statements for the session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_list_triggers/"> list_triggers </a></td>
<td style="text-align: left;">Retrieves the names of all trigger
resources in this Amazon Web Services account, or the resources with the
specified tag</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_list_workflows/"> list_workflows </a></td>
<td style="text-align: left;">Lists names of workflows created in the
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_put_data_catalog_encryption_settings/"> put_data_catalog_encryption_settings </a></td>
<td style="text-align: left;">Sets the security configuration for a
specified catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Sets the Data Catalog resource policy for
access control</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_put_schema_version_metadata/"> put_schema_version_metadata </a></td>
<td style="text-align: left;">Puts the metadata key value pair for a
specified schema version ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_put_workflow_run_properties/"> put_workflow_run_properties </a></td>
<td style="text-align: left;">Puts the specified workflow run properties
for the given workflow run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_query_schema_version_metadata/"> query_schema_version_metadata </a></td>
<td style="text-align: left;">Queries for the schema version metadata
information</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_register_schema_version/"> register_schema_version </a></td>
<td style="text-align: left;">Adds a new version to the existing
schema</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_remove_schema_version_metadata/"> remove_schema_version_metadata </a></td>
<td style="text-align: left;">Removes a key value pair from the schema
version metadata for the specified schema version ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_reset_job_bookmark/"> reset_job_bookmark </a></td>
<td style="text-align: left;">Resets a bookmark entry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_resume_workflow_run/"> resume_workflow_run </a></td>
<td style="text-align: left;">Restarts selected nodes of a previous
partially completed workflow run and resumes the workflow run</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_run_statement/"> run_statement </a></td>
<td style="text-align: left;">Executes the statement</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_search_tables/"> search_tables </a></td>
<td style="text-align: left;">Searches a set of tables based on
properties in the table metadata as well as on the parent database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_start_blueprint_run/"> start_blueprint_run </a></td>
<td style="text-align: left;">Starts a new run of the specified
blueprint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_start_crawler/"> start_crawler </a></td>
<td style="text-align: left;">Starts a crawl using the specified
crawler, regardless of what is scheduled</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_start_crawler_schedule/"> start_crawler_schedule </a></td>
<td style="text-align: left;">Changes the schedule state of the
specified crawler to SCHEDULED, unless the crawler is already running or
the schedule state is already SCHEDULED</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../glue_start_data_quality_rule_recommendation_run/"> start_data_quality_rule_recommendation_run </a></td>
<td style="text-align: left;">Starts a recommendation run that is used
to generate rules when you don't know what rules to write</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../glue_start_data_quality_ruleset_evaluation_run/"> start_data_quality_ruleset_evaluation_run </a></td>
<td style="text-align: left;">Once you have a ruleset definition (either
recommended or your own), you call this operation to evaluate the
ruleset against a data source (Glue table)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_start_export_labels_task_run/"> start_export_labels_task_run </a></td>
<td style="text-align: left;">Begins an asynchronous task to export all
labeled data for a particular transform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_start_import_labels_task_run/"> start_import_labels_task_run </a></td>
<td style="text-align: left;">Enables you to provide additional labels
(examples of truth) to be used to teach the machine learning transform
and improve its quality</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_start_job_run/"> start_job_run </a></td>
<td style="text-align: left;">Starts a job run using a job
definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_start_ml_evaluation_task_run/"> start_ml_evaluation_task_run </a></td>
<td style="text-align: left;">Starts a task to estimate the quality of
the transform</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../glue_start_ml_labeling_set_generation_task_run/"> start_ml_labeling_set_generation_task_run </a></td>
<td style="text-align: left;">Starts the active learning workflow for
your machine learning transform to improve the transform's quality by
generating label sets and adding labels</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_start_trigger/"> start_trigger </a></td>
<td style="text-align: left;">Starts an existing trigger</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_start_workflow_run/"> start_workflow_run </a></td>
<td style="text-align: left;">Starts a new run of the specified
workflow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_stop_crawler/"> stop_crawler </a></td>
<td style="text-align: left;">If the specified crawler is running, stops
the crawl</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_stop_crawler_schedule/"> stop_crawler_schedule </a></td>
<td style="text-align: left;">Sets the schedule state of the specified
crawler to NOT_SCHEDULED, but does not stop the crawler if it is already
running</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_stop_session/"> stop_session </a></td>
<td style="text-align: left;">Stops the session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_stop_trigger/"> stop_trigger </a></td>
<td style="text-align: left;">Stops a specified trigger</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_stop_workflow_run/"> stop_workflow_run </a></td>
<td style="text-align: left;">Stops the execution of the specified
workflow run</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds tags to a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_blueprint/"> update_blueprint </a></td>
<td style="text-align: left;">Updates a registered blueprint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_classifier/"> update_classifier </a></td>
<td style="text-align: left;">Modifies an existing classifier (a
GrokClassifier, an XMLClassifier, a JsonClassifier, or a CsvClassifier,
depending on which field is present)</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../glue_update_column_statistics_for_partition/"> update_column_statistics_for_partition </a></td>
<td style="text-align: left;">Creates or updates partition statistics of
columns</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_column_statistics_for_table/"> update_column_statistics_for_table </a></td>
<td style="text-align: left;">Creates or updates table statistics of
columns</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_connection/"> update_connection </a></td>
<td style="text-align: left;">Updates a connection definition in the
Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_crawler/"> update_crawler </a></td>
<td style="text-align: left;">Updates a crawler</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_crawler_schedule/"> update_crawler_schedule </a></td>
<td style="text-align: left;">Updates the schedule of a crawler using a
cron expression</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_database/"> update_database </a></td>
<td style="text-align: left;">Updates an existing database definition in
a Data Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_data_quality_ruleset/"> update_data_quality_ruleset </a></td>
<td style="text-align: left;">Updates the specified data quality
ruleset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_dev_endpoint/"> update_dev_endpoint </a></td>
<td style="text-align: left;">Updates a specified development
endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_job/"> update_job </a></td>
<td style="text-align: left;">Updates an existing job definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_job_from_source_control/"> update_job_from_source_control </a></td>
<td style="text-align: left;">Synchronizes a job from the source control
repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_ml_transform/"> update_ml_transform </a></td>
<td style="text-align: left;">Updates an existing machine learning
transform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_partition/"> update_partition </a></td>
<td style="text-align: left;">Updates a partition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_registry/"> update_registry </a></td>
<td style="text-align: left;">Updates an existing registry which is used
to hold a collection of schemas</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_schema/"> update_schema </a></td>
<td style="text-align: left;">Updates the description, compatibility
setting, or version checkpoint for a schema set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_source_control_from_job/"> update_source_control_from_job </a></td>
<td style="text-align: left;">Synchronizes a job to the source control
repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_table/"> update_table </a></td>
<td style="text-align: left;">Updates a metadata table in the Data
Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_trigger/"> update_trigger </a></td>
<td style="text-align: left;">Updates a trigger definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glue_update_user_defined_function/"> update_user_defined_function </a></td>
<td style="text-align: left;">Updates an existing function definition in
the Data Catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glue_update_workflow/"> update_workflow </a></td>
<td style="text-align: left;">Updates an existing workflow</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- glue()
    svc$batch_create_partition(
      Foo = 123
    )

    ## End(Not run)
