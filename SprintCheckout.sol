import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "hardhat/console.sol";


contract SprintCheckout {

    function transferFrom(address selectedToken, msg.sender, address merchant, address sprintcheckout, uint amount, uint spcFee) public {
        IERC20 token = IERC20(selectedToken);
        require(
            token.allowance(msg.sender, address(this)) >= amount + spcFee, "Token allowance too low"
        );
        _safeTransferFrom(token, msg.sender, sprintcheckout, spcFee);
        _safeTransferFrom(token, msg.sender, merchant, amount);
    }

    function _safeTransferFrom(
        IERC20 token,
        address sender,
        address recipient,
        uint amount
    ) private {
        bool sent = token.transferFrom(sender, recipient, amount);
        require(sent, "Token transfer failed");
    }
}
