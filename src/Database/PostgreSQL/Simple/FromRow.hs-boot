module Database.PostgreSQL.Simple.FromRow where

import {-# SOURCE #-} Database.PostgreSQL.Simple.FromField

class FromRow a

instance (FromField a, FromField b, FromField c, FromField d) => FromRow (a,b,c,d)
instance (FromField a, FromField b, FromField c, FromField d, FromField e) => FromRow (a,b,c,d,e)