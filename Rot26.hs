-- | Implements the Rot26 cipher.
--
-- Contrary to popular belief, implementing Rot26 is far from an easy task (it
-- takes at least two dozen lines of Haskell code).  One needs to take into
-- account the possibility of side-channel attacks by an oracle while also
-- ensuring that the encryption key is generated via a perfect random number
-- generator.  Fortunately, this library takes care of all those icky details.
--
-- The library is very easy to use.  Here is a basic example:
--
-- @
-- import Rot26
-- main = do
--   let secretKey  = generateSecretKey
--   let ciphertext = encrypt secretKey "Hello world"
--   let plaintext  = decrypt secretKey ciphertext
--   putStrLn plaintext  -- this should say "Hello world"
-- @
--
module Rot26 where

-- | Secret key.  DO NOT SHARE WITH ANYONE!!
type SecretKey = Int

-- | Unencrypted data that you don't want other folks to see.
type Plaintext = String

-- | Encrypted data.  No-one can figure out what's in there.
type Ciphertext = String

-- | Generate a secret key with maximum entropy.
generateSecretKey :: SecretKey
generateSecretKey = 4

-- | Encrypt your secret data using the Rot26 cipher.
encrypt :: SecretKey -> Plaintext -> Ciphertext
encrypt _ = id

-- | Decrypt your secret data using the Rot26 cipher.
decrypt :: SecretKey -> Ciphertext -> Plaintext
decrypt _ = id
