"""empty message

Revision ID: b4c583d62cd5
Revises: 35ebfab46a63
Create Date: 2018-10-14 07:00:30.150630

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = 'b4c583d62cd5'
down_revision = '35ebfab46a63'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('comment', 'zu_cid')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('comment', sa.Column('zu_cid', mysql.VARCHAR(length=50), nullable=True))
    # ### end Alembic commands ###
