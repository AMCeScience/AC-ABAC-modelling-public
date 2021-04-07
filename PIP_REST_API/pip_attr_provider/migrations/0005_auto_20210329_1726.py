# Generated by Django 2.2.1 on 2021-03-29 17:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pip_attr_provider', '0004_auto_20210329_1706'),
    ]

    operations = [
        migrations.AlterField(
            model_name='care_team_participants',
            name='participant',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pip_attr_provider.Users'),
        ),
        migrations.AlterField(
            model_name='encounter',
            name='user_starter',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='user_starter', to='pip_attr_provider.Users'),
        ),
        migrations.AlterField(
            model_name='organization',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='pip_attr_provider.Users'),
        ),
    ]
