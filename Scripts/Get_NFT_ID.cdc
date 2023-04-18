import CryptoPoops from 0x02
import NonFungibleToken from 0x02

pub fun main(acc: Address): [UInt64] {
    let pubRef = getAccount(acc).getCapability(/public/MyCollection)
                    .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                    ?? panic("Collection doesn't exist here")

    return pubRef.getIDs()
}
